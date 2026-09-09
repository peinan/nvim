-- Compat shim for archived nvim-treesitter master on nvim 0.12+.
-- In 0.12 the directive/predicate handler receives `match[id]` as a TSNode[]
-- (one capture can match multiple nodes); the archived master still treats it
-- as a single TSNode and crashes the highlighter (e.g. on bash heredocs via
-- `#downcase!`). Re-register the affected handlers to accept both forms.
local _ts_query = require("vim.treesitter.query")
local _ts_opts = { force = true, all = false }
local function _ts_first(match, id)
    local v = match[id]
    if type(v) == "table" then return v[1] end
    return v
end

_ts_query.add_directive("downcase!", function(match, _, bufnr, pred, metadata)
    local id = pred[2]
    local node = _ts_first(match, id)
    if not node then return end
    local text = vim.treesitter.get_node_text(node, bufnr, { metadata = metadata[id] }) or ""
    metadata[id] = metadata[id] or {}
    metadata[id].text = string.lower(text)
end, _ts_opts)

_ts_query.add_directive("set-lang-from-mimetype!", function(match, _, bufnr, pred, metadata)
    local node = _ts_first(match, pred[2])
    if not node then return end
    local script_type_languages = {
        ["importmap"] = "json",
        ["module"] = "javascript",
        ["application/ecmascript"] = "javascript",
        ["text/ecmascript"] = "javascript",
    }
    local type_attr_value = vim.treesitter.get_node_text(node, bufnr)
    local configured = script_type_languages[type_attr_value]
    if configured then
        metadata["injection.language"] = configured
    else
        local parts = vim.split(type_attr_value, "/", {})
        metadata["injection.language"] = parts[#parts]
    end
end, _ts_opts)

_ts_query.add_directive("set-lang-from-info-string!", function(match, _, bufnr, pred, metadata)
    local node = _ts_first(match, pred[2])
    if not node then return end
    local aliases = { ex = "elixir", pl = "perl", sh = "bash", uxn = "uxntal", ts = "typescript" }
    local alias = vim.treesitter.get_node_text(node, bufnr):lower()
    local ft = vim.filetype.match({ filename = "a." .. alias })
    metadata["injection.language"] = ft or aliases[alias] or alias
end, _ts_opts)

_ts_query.add_predicate("nth?", function(match, _, _, pred)
    local node = _ts_first(match, pred[2])
    local n = tonumber(pred[3])
    if node and node:parent() and node:parent():named_child_count() > n then
        return node:parent():named_child(n) == node
    end
    return false
end, _ts_opts)

_ts_query.add_predicate("is?", function(match, _, bufnr, pred)
    local node = _ts_first(match, pred[2])
    if not node then return true end
    local locals = require("nvim-treesitter.locals")
    local _, _, kind = locals.find_definition(node, bufnr)
    return vim.tbl_contains(vim.list_slice(pred, 3), kind)
end, _ts_opts)

_ts_query.add_predicate("kind-eq?", function(match, _, _, pred)
    local node = _ts_first(match, pred[2])
    if not node then return true end
    return vim.tbl_contains(vim.list_slice(pred, 3), node:type())
end, _ts_opts)

require("nvim-treesitter.configs").setup({
    modules = {},
    ensure_installed = {},
    ignore_install = {
        "dockerfile",
    },

    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = { enable = true },

    matchup = {
        enable = true,
    },

    textobjects = {
        select = { enable = true },
        move = {
            enable = true,
            goto_next_start = {
                ["]f"] = "@function.outer",
                ["]c"] = "@class.outer",
            },
            goto_previous_start = {
                ["[f"] = "@function.outer",
                ["[c"] = "@class.outer",
            },
            goto_next_end = {
                ["]F"] = "@function.outer",
                ["]C"] = "@class.outer",
            },
            goto_previous_end = {
                ["[F"] = "@function.outer",
                ["[C"] = "@class.outer",
            },
        },
    },
})

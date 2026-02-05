local CMP = require("cmp")
local U = require("peinan.utils")

require("peinan.plugins.nvim-cmp")
-- require("luasnip.loaders.from_vscode").lazy_load()

-- Main.
local sources = CMP.config.sources({
    { name = "nvim_lsp" },
    -- { name = "luasnip" },
    { name = "path" },
}, {
    { name = "buffer" },
})
local snippet = {
    expand = function(args)
        require("luasnip").lsp_expand(args.body)
    end,
}
CMP.setup({
    sources = sources,
    -- snippet = snippet,
})

-- Window.
vim.api.nvim_set_hl(0, "CmpCursorLine", {
    bg = vim.api.nvim_get_hl(0, { name = "LineNr" }).fg,
    fg = "NONE",
})
local window = {
    completion = {
        border = "rounded",
        winhighlight = "Normal:Normal,FloatBorder:DiagnosticInfo,CursorLine:CmpCursorLine",
        scrollbar = true,
    },
    documentation = {
        border = "rounded",
        winhighlight = "Normal:Normal,FloatBorder:DiagnosticInfo,CursorLine:CmpCursorLine",
    },
}
CMP.setup({
    window = window,
})

-- Cmdline.
local cmdline_window = {
    completion = {
        winhighlight = "Normal:WhichKeyNormal,Search:None",
        scrollbar = false,
        border = "none",
        col_offset = -2,
        side_padding = 0,
    },
}

-- Search.
local search = {
    window = cmdline_window,
    mapping = CMP.mapping.preset.cmdline(),
    sources = CMP.config.sources({ { name = "buffer" } }),
}
CMP.setup.cmdline({ "/", "?" }, search)

require("peinan.keymaps").completion()

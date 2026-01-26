local MiniFiles = require("mini.files")

MiniFiles.setup({
    mappings = {
        close = "q",
        go_in = "l",
        go_in_plus = "<CR>",
        go_out = "h",
        go_out_plus = "H",
        reset = "<BS>",
        reveal_cwd = "@",
        show_help = "g?",
        synchronize = "=",
        trim_left = "<",
        trim_right = ">",
    },
    windows = {
        preview = true,
        width_focus = 30,
        width_preview = 80,
    },
})

-- Customize appearance
vim.api.nvim_create_autocmd("User", {
    pattern = "MiniFilesWindowUpdate",
    callback = function(args)
        vim.api.nvim_win_set_config(args.data.win_id, {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        })
        vim.wo[args.data.win_id].winhighlight =
            "NormalFloat:MiniFilesNormal,FloatBorder:MiniFilesBorder,FloatTitle:MiniFilesTitle,CursorLine:MiniFilesCursorLine"
    end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        local telescope_border = vim.api.nvim_get_hl(0, { name = "TelescopeBorder" })
        local telescope_title = vim.api.nvim_get_hl(0, { name = "TelescopePromptTitle" })

        vim.api.nvim_set_hl(0, "MiniFilesNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "MiniFilesBorder", telescope_border)
        vim.api.nvim_set_hl(0, "MiniFilesTitle", telescope_title)
        vim.api.nvim_set_hl(0, "MiniFilesTitleFocused", { fg = "#EBCB8B", bold = true })
        vim.api.nvim_set_hl(0, "MiniFilesCursorLine", { fg = "#EBCB8B", bg = "NONE" })
    end,
})

vim.cmd("doautocmd ColorScheme")

-- Custom mappings for split/vsplit/tabedit
local map_split = function(buf_id, lhs, direction)
    local rhs = function()
        local entry = MiniFiles.get_fs_entry()
        if entry == nil or entry.fs_type == "directory" then
            return
        end
        local win_id = MiniFiles.get_explorer_state().target_window
        MiniFiles.close()
        if direction ~= "tabedit" then
            vim.api.nvim_set_current_win(win_id)
        end
        vim.cmd(direction .. " " .. vim.fn.fnameescape(entry.path))
    end
    vim.keymap.set("n", lhs, rhs, { buffer = buf_id, desc = "Open in " .. direction })
end

vim.api.nvim_create_autocmd("User", {
    pattern = "MiniFilesBufferCreate",
    callback = function(args)
        local buf_id = args.data.buf_id
        map_split(buf_id, "gs", "split")
        map_split(buf_id, "gv", "vsplit")
        map_split(buf_id, "gt", "tabedit")
    end,
})

require("peinan.keymaps").mini_files()

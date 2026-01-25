require("mini.files").setup({
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
        width_preview = 40,
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
        local telescope_selection = vim.api.nvim_get_hl(0, { name = "TelescopeSelection" })

        vim.api.nvim_set_hl(0, "MiniFilesNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "MiniFilesBorder", telescope_border)
        vim.api.nvim_set_hl(0, "MiniFilesTitle", telescope_title)
        vim.api.nvim_set_hl(0, "MiniFilesTitleFocused", { fg = "#EBCB8B", bold = true })
        vim.api.nvim_set_hl(0, "MiniFilesCursorLine", { fg = "#EBCB8B", bg = "NONE" })
    end,
})

vim.cmd("doautocmd ColorScheme")

require("alex.keymaps").mini_files()

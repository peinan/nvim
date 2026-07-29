local MiniFiles = require("mini.files")

MiniFiles.setup({
    mappings = {
        close = "q",
        go_in = "L",
        go_in_plus = "<CR>",
        go_out = "",
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
        local win_id = args.data.win_id
        local buf_id = vim.api.nvim_win_get_buf(win_id)

        -- Calculate appropriate width based on buffer content
        local width = 80 -- default for file previews
        local lines = vim.api.nvim_buf_get_lines(buf_id, 0, -1, false)

        -- Check if this is likely a directory listing (short lines, likely just filenames)
        local max_line_length = 0
        local is_likely_dir = true
        for _, line in ipairs(lines) do
            local line_length = vim.fn.strdisplaywidth(line)
            max_line_length = math.max(max_line_length, line_length)
            -- If we find a line longer than 100 chars, it's likely a file content
            if line_length > 100 then
                is_likely_dir = false
                break
            end
        end

        -- For directory listings, use a narrower width that fits the content
        if is_likely_dir and max_line_length > 0 then
            -- Add some padding (10 chars) to the longest line, but cap at 50
            width = math.min(max_line_length + 10, 50)
            -- Ensure minimum width of 30
            width = math.max(width, 30)
        end

        vim.api.nvim_win_set_config(win_id, {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
            width = width,
        })
        vim.wo[win_id].winhighlight =
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

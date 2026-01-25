require("mini.files").setup({
    mappings = {
        close       = "q",
        go_in       = "l",
        go_in_plus  = "<CR>",
        go_out      = "h",
        go_out_plus = "H",
        reset       = "<BS>",
        reveal_cwd  = "@",
        show_help   = "g?",
        synchronize = "=",
        trim_left   = "<",
        trim_right  = ">",
    },
    windows = {
        preview = true,
        width_focus = 30,
        width_preview = 40,
    },
})

require("alex.keymaps").mini_files()

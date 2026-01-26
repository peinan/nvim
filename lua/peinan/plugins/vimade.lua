return {
    recipe = { "paradox", { animate = true } },
    fadelevel = 0.6,

    blocklist = {
        -- Block all floating windows (notifications, popups, etc.)
        block_floats = function(win, active)
            return win.win_config.relative ~= ""
        end,

        -- Block specific filetypes
        filetypes = {
            buf_opts = {
                filetype = {
                    "minifiles",
                    "minifiles-help",
                    "dashboard",
                    "noice",
                    "notify",
                    "lazy",
                    "TelescopePrompt",
                    "TelescopeResults",
                    "qf",
                    "help",
                    "man",
                    "checkhealth",
                    "DiffviewFiles",
                    "no-neck-pain",
                    "netrw",
                },
            },
        },

        -- Block specific buftypes
        buftypes = {
            buf_opts = {
                buftype = {
                    "nofile",
                    "prompt",
                    "help",
                    "terminal",
                    "quickfix",
                },
            },
        },
    },
}

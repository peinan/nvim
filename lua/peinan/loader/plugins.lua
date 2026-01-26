return {
    -- General UI/UX
    {
        "glepnir/dashboard-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("peinan.plugins.dashboard")
        end,
        lazy = false,
        priority = 999,
    },
    {
        "shortcuts/no-neck-pain.nvim",
        cmd = { "NoNeckPain" },
        config = function()
            require("peinan.plugins.no-neck-pain").setup()
        end,
    },
    {
        "karb94/neoscroll.nvim",
        event = { "WinScrolled" },
        config = function()
            require("peinan.plugins.neoscroll-nvim").init()
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "VeryLazy" },
        config = function()
            require("peinan.plugins.indent-blankline")
        end,
    },
    {
        "folke/todo-comments.nvim",
        -- This needs to be at stratup so that we can get the highliting.
        event = { "VeryLazy" },
        dependencies = {
            "nvim-lua/plenary.nvim",
            -- This is a dep but it does not have to be loaded with this plugin.
            -- "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("peinan.plugins.todo")
        end,
    },
    {
        "echasnovski/mini.files",
        version = false,
        config = function()
            require("peinan.plugins.mini-files")
        end,
        lazy = false,
    },
    {
        "nvim-telescope/telescope.nvim",
        cmd = { "Telescope" },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-lua/popup.nvim",
            {
                -- Currently only using these enhancements with telescope.
                "stevearc/quicker.nvim",
                config = function()
                    require("peinan.plugins.quicker")
                end,
            },
        },
        config = function()
            require("peinan.plugins.telescope")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        config = function()
            require("peinan.plugins.lualine")
        end,
    },
    {
        "folke/noice.nvim",
        dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
        event = { "VeryLazy" },
        config = function()
            require("peinan.plugins.noice")
        end,
    },
    {
        -- This plugin has issues when lazy.
        "lewis6991/gitsigns.nvim",
        -- event = { "VeryLazy" },
        config = function()
            require("peinan.plugins.gitsigns")
        end,
        lazy = false,
    },
    {
        "sindrets/diffview.nvim",
        cmd = { "DiffviewClose", "DiffviewOpen" },
        config = function()
            require("peinan.plugins.diffview")
        end,
    },
    {
        "TaDaa/vimade",
        event = { "VeryLazy" },
        opts = function()
            return require("peinan.plugins.vimade")
        end,
    },

    -- Editing / Movement.
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        config = function()
            require("peinan.plugins.flash")
        end,
    },
    {
        "NMAC427/guess-indent.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("guess-indent").setup({
                auto_cmd = true,
                override_editorconfig = false,
                filetype_exclude = {
                    "netrw",
                    "tutor",
                },
                buftype_exclude = {
                    "help",
                    "nofile",
                    "terminal",
                    "prompt",
                },
            })
        end,
    },

    -- Language.
    {
        "mfussenegger/nvim-lint",
        -- Does not make sense to have a linter without a LSP.
        -- This will have to change if that ever happens.
        event = { "LspAttach" },
        config = function()
            require("peinan.plugins.linter")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
        event = { "VeryLazy" },
        build = { ":TSUpdate" },
        config = function()
            require("peinan.plugins.treesitter")
        end,
    },
    {
        "folke/lazydev.nvim",
        dependencies = { "Bilal2453/luvit-meta" },
        ft = "lua",
        event = { "LspAttach" },
    },
    {
        "hrsh7th/nvim-cmp",
        event = { "VeryLazy" },
        config = function()
            require("peinan.plugins.completion")
        end,
        dependencies = {
            "hrsh7th/cmp-omni",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            {
                "L3MON4D3/LuaSnip",
                dependencies = { "rafamadriz/friendly-snippets" },
                build = "make install_jsregexp",
            },
        },
    },

    -- Other.
    {
        "aserowy/tmux.nvim",
        event = { "VeryLazy" },
        config = function()
            require("tmux").setup()
        end,
    },

    -- Dependencies.
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("peinan.plugins.nvim-web-devicons")
        end,
    },
    {
        -- Loaded by the native config.
        "neovim/nvim-lspconfig",
        lazy = true,
    },

    -- Themes.
    {
        "peinan/nordic-transparent.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("peinan.plugins.nordic")
        end,
    },

    -- Bin (maybe to remove)
    {
        "folke/which-key.nvim",
        event = { "VeryLazy" },
        config = function()
            require("peinan.plugins.which-key")
        end,
    },
}

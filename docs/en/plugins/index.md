# Plugins List

This page lists all plugins used in the Neovim configuration.

## Plugin Management

This configuration uses [Lazy.nvim](https://github.com/folke/lazy.nvim) to manage plugins.

**Configuration file**: [`lua/peinan/loader/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/loader/init.lua)

## Plugin Categories

- [UI/UX](/plugins/ui-ux) - User interface and user experience
- [Editing/Movement](/plugins/editing) - Text editing and movement features
- [Language Support](/plugins/language) - Language servers and syntax highlighting
- [Others](/plugins/others) - Other features

## Plugins Table

| Plugin Name | Category | Description |
|------------|---------|-------------|
| [dashboard-nvim](/plugins/ui-ux#dashboard-nvim) | UI/UX | Startup dashboard |
| [no-neck-pain.nvim](/plugins/ui-ux#no-neck-painnvim) | UI/UX | Center focus mode |
| [neoscroll.nvim](/plugins/ui-ux#neoscrollnvim) | UI/UX | Smooth scrolling |
| [indent-blankline.nvim](/plugins/ui-ux#indent-blanklinenvim) | UI/UX | Indent guides |
| [oil.nvim](/plugins/ui-ux#oilnvim) | UI/UX | File explorer |
| [telescope.nvim](/plugins/ui-ux#telescopenvim) | UI/UX | Fuzzy finder |
| [lualine.nvim](/plugins/ui-ux#lualinenvim) | UI/UX | Status line |
| [noice.nvim](/plugins/ui-ux#noicenvim) | UI/UX | Command line UI improvements |
| [gitsigns.nvim](/plugins/ui-ux#gitsignsnvim) | UI/UX | Git change display |
| [diffview.nvim](/plugins/ui-ux#diffviewnvim) | UI/UX | Git diff display |
| [git-blame.nvim](/plugins/ui-ux#git-blamenvim) | UI/UX | Git blame display |
| [leap.nvim](/plugins/editing#leapnvim) | Editing/Movement | Fast text movement |
| [nvim-treesitter](/plugins/language#nvim-treesitter) | Language Support | Syntax highlighting |
| [nvim-lspconfig](/plugins/language#nvim-lspconfig) | Language Support | LSP configuration |
| [nvim-cmp](/plugins/language#nvim-cmp) | Language Support | Completion engine |
| [nvim-lint](/plugins/language#nvim-lint) | Language Support | Linter integration |
| [todo-comments.nvim](/plugins/language#todo-commentsnvim) | Language Support | TODO comment management |
| [which-key.nvim](/plugins/others#which-keynvim) | Others | Keymap help |
| [nordic-transparent.nvim](/plugins/others#nordic-transparentnvim) | Others | Color theme |
| [tmux.nvim](/plugins/others#tmuxnvim) | Others | Tmux integration |

## Dependency Plugins

The following plugins are used as dependencies for other plugins:

| Plugin Name | Description |
|------------|-------------|
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | Icon display |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Utility functions |
| [nui.nvim](https://github.com/MunifTanjim/nui.nvim) | UI components |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | Notification system |
| [quicker.nvim](https://github.com/stevearc/quicker.nvim) | Telescope extension |
| [lazydev.nvim](https://github.com/folke/lazydev.nvim) | Lua development support |
| [luvit-meta](https://github.com/Bilal2453/luvit-meta) | Lua development support |
| [vim-repeat](https://github.com/tpope/vim-repeat) | Repeat functionality |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Tree-sitter text objects |
| [cmp-omni](https://github.com/hrsh7th/cmp-omni) | Completion source |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | LSP completion source |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | Buffer completion source |
| [cmp-path](https://github.com/hrsh7th/cmp-path) | Path completion source |
| [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) | Command line completion source |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | LuaSnip completion source |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippet collection |

## Plugin Configuration Location

All plugin configurations are located in the [`lua/peinan/plugins/`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins) directory. Each plugin has its own configuration file.

For details, see each category page.


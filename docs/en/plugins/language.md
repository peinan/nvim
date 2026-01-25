# Language Support Plugins

This page describes plugins related to language servers and syntax highlighting.

## nvim-treesitter <a href="https://github.com/nvim-treesitter/nvim-treesitter" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Provides syntax highlighting and text objects.

**Configuration file**: [`lua/peinan/plugins/treesitter.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/treesitter.lua)

**Dependencies**:
- nvim-treesitter-textobjects

**Main features**:
- Fast syntax highlighting
- Text object extensions
- Incremental selection
- Code folding

**Configuration features**:
- Auto installation
- Text object configuration
- Highlight priority settings

## nvim-lspconfig <a href="https://github.com/neovim/nvim-lspconfig" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Provides LSP (Language Server Protocol) configuration.

**Configuration file**: [`lua/peinan/native/lsp/`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp)

**Main features**:
- Language server configuration
- Code completion
- Jump to definitions and references
- Rename
- Format
- Diagnostics display (errors, warnings, info, hints)
- Virtual text diagnostics (toggleable)
- Auto format (toggleable)
- Diagnostics float display
- Navigate between diagnostics

**Configuration files**:
- [`lua/peinan/native/lsp/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp/init.lua) - LSP initialization and diagnostics
- [`lua/peinan/native/lsp/defaults.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp/defaults.lua) - Default LSP settings
- [`lua/peinan/native/lsp/tsn.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp/tsn.lua) - TypeScript/Node.js specific settings

**Keymaps**: See the LSP-related section in [Keymaps List](/keymaps/)

## nvim-cmp <a href="https://github.com/hrsh7th/nvim-cmp" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Provides a completion engine.

**Configuration file**: [`lua/peinan/plugins/completion.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/completion.lua)

**Dependencies**:
- cmp-omni
- cmp-nvim-lsp
- cmp-buffer
- cmp-path
- cmp-cmdline
- cmp_luasnip
- LuaSnip
- friendly-snippets

**Main features**:
- LSP completion
- Path completion
- Buffer completion
- Command line completion
- Snippet completion

**Configuration**:
```lua
local sources = CMP.config.sources({
    { name = "nvim_lsp" },
    { name = "path" },
})
```

**Keymaps**:
- `<C-Space>` - Start completion
- `<C-u>` / `<C-d>` - Scroll documentation
- `<C-e>` - Abort completion
- `<CR>` - Confirm completion

**Completion sources**:
- **nvim_lsp**: Completion from LSP
- **path**: File path completion
- **buffer**: Text completion from buffers (when searching)
- **cmdline**: Command line completion

## nvim-lint <a href="https://github.com/mfussenegger/nvim-lint" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Integrates linters.

**Configuration file**: [`lua/peinan/plugins/linter.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/linter.lua)

**Main features**:
- Integration of multiple linters
- Auto linting
- Diagnostics display

**Configuration features**:
- Automatically enabled when LSP attaches
- File type-specific linter settings

## todo-comments.nvim <a href="https://github.com/folke/todo-comments.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Highlights and makes TODO comments searchable.

**Configuration file**: [`lua/peinan/plugins/todo.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/todo.lua)

**Dependencies**:
- plenary.nvim

**Main features**:
- TODO comment highlighting
- Custom keyword support
- Integration with Telescope

**Supported keywords**:
- `FIX` - Bug fixes
- `HACK` - Hacks
- `TODO` - Tasks
- `WARN` - Warnings
- `PERF` - Performance
- `NOTE` - Notes
- `TEST` - Tests

**Configuration**:
```lua
require("todo-comments").setup({
    signs = false,
    keywords = {
        FIX = { icon = "" },
        HACK = { icon = "󱠇" },
        TODO = { icon = "" },
        WARN = { icon = "" },
        PERF = { icon = "󱑂" },
        NOTE = { icon = "" },
        TEST = { icon = "󰙨" },
    },
})
```

**Keymaps**:
- `ft` - TODO search (current directory)
- `fT` - TODO search (Git root)

## lazydev.nvim <a href="https://github.com/folke/lazydev.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Supports Lua development.

**Dependencies**:
- luvit-meta

**Main features**:
- Lua API completion
- Type information display

**Configuration features**:
- Only enabled for Lua file types
- Automatically enabled when LSP attaches


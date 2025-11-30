# Directory Structure

This page explains the directory structure of the Neovim configuration and the role of each directory.

## Overall Structure

```
nvim/
├── init.lua                    # Entry point
├── lua/
│   └── alex/                   # Main configuration module
│       ├── init.lua            # Main initialization file
│       ├── environments/       # Environment-specific settings
│       ├── keymaps/            # Keymap definitions
│       ├── loader/             # Plugin loader
│       ├── native/             # Neovim native features
│       ├── plugins/            # Plugin settings
│       └── utils/              # Utility functions
├── after/                      # Filetype-specific settings
└── docs/                       # Documentation
```

## Directory Details

### `init.lua`

Neovim entry point. Loads the `lua/alex` module.

**File**: [`init.lua`](https://github.com/peinan/nvim/tree/main/init.lua)

```lua
require("alex")
```

### [`lua/alex/`](https://github.com/peinan/nvim/tree/main/lua/alex)

Main configuration module. All settings are organized under this directory.

#### `lua/alex/init.lua`

Main initialization file. Loads modules in the following order:

1. Environment check (`alex.environments`)
2. Native option settings (`alex.native.options`)
3. Plugin loader (`alex.loader`)
4. Native features (`alex.native`)
5. Keymaps (`alex.keymaps`)

**File**: [`lua/alex/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/init.lua)

#### [`lua/alex/environments/`](https://github.com/peinan/nvim/tree/main/lua/alex/environments)

Manages environment-specific settings. Applies settings based on the execution environment such as Neovide, WezTerm, and VSCode.

**Main files**:
- `init.lua` - Environment detection and initialization
- `neovide.lua` - Neovide-specific settings
- `wezterm.lua` - WezTerm-specific settings
- `vscode.lua` - Settings for VSCode extension

**Role**:
- Setting environment variables
- Environment-specific option settings
- Control initialization based on environment

#### [`lua/alex/keymaps/`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps)

Manages all keymap definitions. Centralized to prevent key binding conflicts.

**Main files**:
- `init.lua` - Keymap initialization and definitions
- `utils.lua` - Utility functions for keymaps

**Role**:
- Definition of all key bindings
- Mode-specific (normal, insert, visual, terminal, command) keymaps
- Plugin-specific keymaps

#### [`lua/alex/loader/`](https://github.com/peinan/nvim/tree/main/lua/alex/loader)

Manages plugin loading. Uses Lazy.nvim for lazy loading plugins.

**Main files**:
- `bootstrap.lua` - Lazy.nvim bootstrap
- `init.lua` - Lazy.nvim initialization
- `plugins.lua` - Plugin definition list

**Role**:
- Plugin installation and updates
- Lazy loading configuration
- Plugin dependency management

#### [`lua/alex/native/`](https://github.com/peinan/nvim/tree/main/lua/alex/native)

Manages Neovim native feature settings. Implements features that don't depend on plugins.

**Main files**:
- `init.lua` - Native features initialization
- `options.lua` - Neovim option settings
- [`lsp/`](https://github.com/peinan/nvim/tree/main/lua/alex/native/lsp) - LSP settings
  - `init.lua` - LSP initialization and diagnostics
  - `defaults.lua` - Default LSP settings
  - `tsn.lua` - TypeScript/Node.js specific settings
- `statuscolumn.lua` - Status column settings
- `terminal.lua` - Terminal settings
- `winbar.lua` - Window bar settings

**Role**:
- Basic Neovim option settings
- LSP setup and diagnostics
- UI element customization

#### [`lua/alex/plugins/`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins)

Manages individual plugin configuration files. Each plugin has its own configuration file.

**Main files**:
- `dashboard.lua` - Dashboard settings
- `telescope.lua` - Telescope settings
- `treesitter.lua` - Tree-sitter settings
- `completion.lua` - Completion settings
- `lualine.lua` - Status line settings
- Many other plugin configurations

**Role**:
- Plugin-specific settings
- Plugin integration settings

#### [`lua/alex/utils/`](https://github.com/peinan/nvim/tree/main/lua/alex/utils)

Provides utility functions.

**Main files**:
- `init.lua` - Utility aggregation
- `chars.lua` - Character constants
- `git.lua` - Git-related utilities
- `lua.lua` - Lua-related utilities
- `neovim.lua` - Neovim-related utilities

**Role**:
- Providing common functions
- Aggregating helper functions

### `after/`

Manages filetype-specific settings. Applies additional settings for specific file types.

**Main files**:
- `ftplugin/*.lua` - Filetype-specific settings

**Role**:
- Filetype-specific option settings
- Filetype-specific keymaps

## Module Dependencies

For detailed dependency relationships, see [Dependencies](/structure/dependencies).

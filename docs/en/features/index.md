# Features List

This page describes all available features in the Neovim configuration.

## Core Features

### Environment Support

Supports multiple execution environments:

- **Neovide**: GUI version of Neovim
- **WezTerm**: Terminal emulator
- **VSCode**: Runs as VSCode extension

**Configuration file**: [`lua/peinan/environments/`](https://github.com/peinan/nvim/tree/main/lua/peinan/environments)

### LSP (Language Server Protocol)

Provides powerful language support:

- **Auto Format**: Automatic formatting on save (optional)
- **Diagnostics Display**: Display of errors, warnings, info, and hints
- **Virtual Text**: Inline diagnostics display (toggleable)
- **Definition/References**: Jump to symbol definitions and references
- **Hover Information**: Display symbol information
- **Signature Help**: Display function signatures
- **Rename**: Rename symbols

**Configuration file**: [`lua/peinan/native/lsp/`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp)

**Keymaps**:
- `RR` - Rename
- `gi` - Jump to implementations
- `gh` - Hover information
- `<C-\>` - Signature help
- `ge` - Show diagnostics float
- `[e` / `]e` - Previous/Next diagnostics
- `[E` / `]E` - Previous/Next errors
- `<leader>l` - LSP info
- `<leader>d` - Toggle virtual diagnostics
- `<leader>f` - Toggle auto format

### Completion

Provides powerful completion:

- **LSP Completion**: Completion from language servers
- **Path Completion**: File path completion
- **Buffer Completion**: Text completion from buffers
- **Command Line Completion**: Command line completion

**Configuration file**: [`lua/peinan/plugins/completion.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/completion.lua)

**Keymaps**:
- `<C-Space>` - Start completion
- `<C-u>` / `<C-d>` - Scroll documentation
- `<C-e>` - Abort completion
- `<CR>` - Confirm completion

### File Management

#### Oil.nvim

Functions as a file explorer.

**Configuration file**: [`lua/peinan/plugins/oil-nvim.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/oil-nvim.lua)

**Keymaps**:
- `<leader>e` - Toggle Oil

#### Telescope

Powerful fuzzy finder:

- **File Search**: Search by filename
- **Live Grep**: Text search
- **Buffer Search**: Search open buffers
- **Jump List**: Search jump history
- **Registers**: Search registers
- **Help Tags**: Search Neovim help
- **Man Pages**: Search manual pages
- **Spell Check**: Spell correction suggestions
- **Diagnostics**: Search LSP diagnostics
- **LSP Features**: Search definitions, references, implementations, symbols
- **TODO**: Search TODO comments

**Configuration file**: [`lua/peinan/plugins/telescope.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/telescope.lua)

**Keymaps**:
- `ff` - File search (current directory)
- `fF` - File search (Git root)
- `fw` - Search in current buffer
- `fW` - Live grep (Git root)
- `fh` - Help tags
- `fk` - Keymap search
- `fj` - Jump list
- `fm` - Man pages
- `fo` - Recent files (current directory)
- `fO` - Recent files (home)
- `fd` - Diagnostics (current buffer)
- `fD` - Diagnostics (all)
- `fg` - Registers
- `ft` - TODO (current directory)
- `fT` - TODO (Git root)
- `fs` - Document symbols
- `gr` - References
- `gd` - Definitions
- `<C-n>` - Buffer list

### Editing Features

#### Leap

Fast text movement:

- **Forward Jump**: Jump forward with `s`
- **Backward Jump**: Jump backward with `S`

**Configuration file**: [`lua/peinan/plugins/leap.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/leap.lua)

**Keymaps**:
- `s` - Forward jump
- `S` - Backward jump

#### Other Editing Features

- **Save**: `<C-s>` - Save file
- **Diffview**: `<leader>v` - Toggle Diffview

**Configuration file**: [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua)

### Git Features

#### GitSigns

Displays Git changes in the sign column:

- **Added**: New files
- **Modified**: Changed files
- **Deleted**: Deleted files

**Configuration file**: [`lua/peinan/plugins/gitsigns.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/gitsigns.lua)

#### Git Blame

Displays Git blame information:

**Configuration file**: [`lua/peinan/plugins/git-blame.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/git-blame.lua)

**Keymaps**:
- `<leader>b` - Toggle Git Blame

#### Diffview

Displays Git diffs:

**Configuration file**: [`lua/peinan/plugins/diffview.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/diffview.lua)

**Keymaps**:
- `<leader>v` - Toggle Diffview

### UI/UX Features

#### Dashboard

Startup dashboard:

- **Recent Files**: Recently opened files
- **Recent Projects**: Recently opened projects
- **Shortcuts**: Quick actions

**Configuration file**: [`lua/peinan/plugins/dashboard.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/dashboard.lua)

#### Lualine

Status line:

- **Mode Display**: Current mode
- **Branch Information**: Git branch
- **Diff Display**: Git diff
- **Diagnostics Display**: LSP diagnostics
- **LSP Servers**: Connected LSP servers
- **Various States**: Virtual diagnostics, format, Zen mode states

**Configuration file**: [`lua/peinan/plugins/lualine.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/lualine.lua)

#### Noice

Improves command line UI:

- **Command History**: Command history display
- **Notifications**: Notification display
- **LSP Messages**: LSP message display

**Configuration file**: [`lua/peinan/plugins/noice.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/noice.lua)

**Keymaps**:
- `<C-d>` / `<C-u>` - Scroll LSP messages
- `<C-m>` - Dismiss Noice

#### No Neck Pain

Center focus mode:

**Configuration file**: [`lua/peinan/plugins/no-neck-pain.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/no-neck-pain.lua)

**Keymaps**:
- `<leader>n` - Toggle No Neck Pain

#### Indent Blankline

Displays indent guides:

**Configuration file**: [`lua/peinan/plugins/indent-blankline.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/indent-blankline.lua)

#### Neoscroll

Smooth scrolling:

**Configuration file**: [`lua/peinan/plugins/neoscroll-nvim.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/neoscroll-nvim.lua)

### Language Support

#### Tree-sitter

Syntax highlighting and text objects:

**Configuration file**: [`lua/peinan/plugins/treesitter.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/treesitter.lua)

#### Linter

Linter integration:

**Configuration file**: [`lua/peinan/plugins/linter.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/linter.lua)

#### TODO Comments

Highlights and searches TODO comments:

**Configuration file**: [`lua/peinan/plugins/todo.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/todo.lua)

**Keymaps**:
- `ft` - TODO search (current directory)
- `fT` - TODO search (Git root)

### Other Features

#### Which Key

Keymap help display:

**Configuration file**: [`lua/peinan/plugins/which-key.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/which-key.lua)

#### Colorizer

Highlights color codes:

**Configuration file**: [`lua/peinan/plugins/colorizer.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/colorizer.lua)

## Window Management

### Window Movement

- `<C-h>` - Move to left window
- `<C-j>` - Move to bottom window
- `<C-k>` - Move to top window
- `<C-l>` - Move to right window
- `<C-w><C-c>` - Close window

### Buffer Management

- `Q` - Delete buffer
- `<C-n>` - Buffer list (Telescope)

## Quickfix

- `}` - Next quickfix entry
- `{` - Previous quickfix entry

## Other Convenient Features

- `yp` - Copy filename to clipboard
- `yP` - Copy file path to clipboard
- `gm` - Open manual page in vertical split
- `<Esc>` - Clear search highlights
- `z=` - Spell correction suggestions


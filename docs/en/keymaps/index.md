# Keymaps List

This page lists all keymaps used in the Neovim configuration.

## Leader Key

The leader key is set to `<Space>`.

## Mode Notation

- `n` - Normal mode
- `i` - Insert mode
- `v` - Visual mode
- `t` - Terminal mode
- `c` - Command mode

## LSP Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `RR` | `n` | Rename symbol | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `gi` | `n` | Jump to implementations | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `gh` | `n` | Show hover information | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-\>` | `n`, `i` | Show signature help | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `ge` | `n` | Open diagnostics float | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `[e` | `n` | Previous diagnostics | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `]e` | `n` | Next diagnostics | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `[E` | `n` | Previous error | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `]E` | `n` | Next error | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<leader>l` | `n` | Show LSP info | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<leader>d` | `n` | Toggle virtual diagnostics | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<leader>f` | `n` | Toggle auto format | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## Telescope Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `ff` | `n` | File search (current directory) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fF` | `n` | File search (Git root) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fw` | `n` | Search in current buffer | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fW` | `n` | Live grep (Git root) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fh` | `n` | Help tags search | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fk` | `n` | Keymap search | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fj` | `n` | Jump list search | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fm` | `n` | Man pages search | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fo` | `n` | Recent files (current directory) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fO` | `n` | Recent files (home) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fd` | `n` | Diagnostics search (current buffer) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fD` | `n` | Diagnostics search (all) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fg` | `n`, `v` | Registers search | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `ft` | `n` | TODO search (current directory) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fT` | `n` | TODO search (Git root) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `fs` | `n` | Document symbols search | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `gr` | `n` | LSP references search | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `gd` | `n` | LSP definitions search | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-n>` | `n` | Buffer list | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## Editing Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<C-s>` | `n`, `i`, `v` | Save file | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `s` | `n` | Leap forward jump | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `S` | `n` | Leap backward jump | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<Esc>` | `i` | Exit insert mode (keep cursor position) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<Esc>` | `v` | Exit visual mode | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `i` | `v` | Uppercase I in visual mode | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `p` | `v` | Paste (don't overwrite register) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `P` | `v` | Paste (don't overwrite register) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## Window Management

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<C-h>` | `n`, `t` | Move to left window | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-j>` | `n`, `t` | Move to bottom window | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-k>` | `n`, `t` | Move to top window | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-l>` | `n`, `t` | Move to right window | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-w><C-c>` | `n`, `t` | Close window | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## Buffer Management

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `Q` | `n` | Delete buffer | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## File Management

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<leader>e` | `n` | Toggle Oil (file explorer) | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## Git Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<leader>b` | `n` | Toggle Git Blame | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<leader>v` | `n` | Toggle Diffview | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## UI Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<leader>n` | `n` | Toggle No Neck Pain | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-m>` | `n` | Dismiss Noice | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-d>` | `n`, `i`, `s` | Scroll LSP messages down | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-u>` | `n`, `i`, `s` | Scroll LSP messages up | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## Completion Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<C-Space>` | `i`, `c` | Start completion | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-u>` | `i` | Scroll completion docs up | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-d>` | `i` | Scroll completion docs down | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-e>` | `i` | Abort completion | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<CR>` | `i` | Confirm completion | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## Others

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<Esc>` | `n` | Clear search highlights | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `K` | `n` | Disabled | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `gm` | `n` | Open manual page in vertical split | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `yp` | `n` | Copy filename to clipboard | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `yP` | `n` | Copy file path to clipboard | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `}` | `n` | Next quickfix entry | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `{` | `n` | Previous quickfix entry | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `z=` | `n` | Spell correction suggestions | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-e>` | `n`, `v` | Scroll down | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<C-y>` | `n`, `v` | Scroll up | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `<BS>` | `c` | Custom backspace behavior | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## Keymaps in Oil.nvim

| Key | Description | Config File |
|-----|-------------|-------------|
| `<CR>` | Select file | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |
| `-` | Move to parent directory | [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua) |

## Keymap Configuration Location

All keymaps are defined in [`lua/alex/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps/init.lua). This file is divided into the following functions:

- `M.native()` - Neovim native feature keymaps
- `M.editing()` - Editing-related keymaps
- `M.lsp()` - LSP-related keymaps
- `M.telescope()` - Telescope-related keymaps
- `M.no_neck_pain()` - No Neck Pain-related keymaps
- `M.oil()` - Oil.nvim-related keymaps
- `M.leap()` - Leap-related keymaps
- `M.completion()` - Completion-related keymaps
- `M.blame()` - Git Blame-related keymaps


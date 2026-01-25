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
| `RR` | `n` | Rename symbol | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gi` | `n` | Jump to implementations | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gh` | `n` | Show hover information | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-\>` | `n`, `i` | Show signature help | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `ge` | `n` | Open diagnostics float | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `[e` | `n` | Previous diagnostics | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `]e` | `n` | Next diagnostics | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `[E` | `n` | Previous error | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `]E` | `n` | Next error | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<leader>l` | `n` | Show LSP info | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<leader>d` | `n` | Toggle virtual diagnostics | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<leader>f` | `n` | Toggle auto format | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Telescope Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `ff` | `n` | File search (current directory) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fF` | `n` | File search (Git root) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fw` | `n` | Search in current buffer | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fW` | `n` | Live grep (Git root) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fh` | `n` | Help tags search | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fk` | `n` | Keymap search | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fj` | `n` | Jump list search | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fm` | `n` | Man pages search | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fo` | `n` | Recent files (current directory) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fO` | `n` | Recent files (home) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fd` | `n` | Diagnostics search (current buffer) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fD` | `n` | Diagnostics search (all) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fg` | `n`, `v` | Registers search | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `ft` | `n` | TODO search (current directory) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fT` | `n` | TODO search (Git root) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fs` | `n` | Document symbols search | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gr` | `n` | LSP references search | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gd` | `n` | LSP definitions search | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-n>` | `n` | Buffer list | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Editing Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<C-s>` | `n`, `i`, `v` | Save file | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `s` | `n` | Leap forward jump | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `S` | `n` | Leap backward jump | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<Esc>` | `i` | Exit insert mode (keep cursor position) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<Esc>` | `v` | Exit visual mode | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `i` | `v` | Uppercase I in visual mode | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `p` | `v` | Paste (don't overwrite register) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `P` | `v` | Paste (don't overwrite register) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Window Management

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<C-h>` | `n`, `t` | Move to left window | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-j>` | `n`, `t` | Move to bottom window | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-k>` | `n`, `t` | Move to top window | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-l>` | `n`, `t` | Move to right window | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-w><C-c>` | `n`, `t` | Close window | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Buffer Management

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `Q` | `n` | Delete buffer | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## File Management

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<leader>e` | `n` | Toggle Oil (file explorer) | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Git Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<leader>b` | `n` | Toggle Git Blame | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<leader>v` | `n` | Toggle Diffview | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## UI Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<leader>n` | `n` | Toggle No Neck Pain | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-m>` | `n` | Dismiss Noice | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-d>` | `n`, `i`, `s` | Scroll LSP messages down | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-u>` | `n`, `i`, `s` | Scroll LSP messages up | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Completion Related

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<C-Space>` | `i`, `c` | Start completion | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-u>` | `i` | Scroll completion docs up | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-d>` | `i` | Scroll completion docs down | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-e>` | `i` | Abort completion | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<CR>` | `i` | Confirm completion | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Others

| Key | Mode | Description | Config File |
|-----|------|-------------|-------------|
| `<Esc>` | `n` | Clear search highlights | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `K` | `n` | Disabled | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gm` | `n` | Open manual page in vertical split | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `yp` | `n` | Copy filename to clipboard | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `yP` | `n` | Copy file path to clipboard | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `}` | `n` | Next quickfix entry | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `{` | `n` | Previous quickfix entry | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `z=` | `n` | Spell correction suggestions | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-e>` | `n`, `v` | Scroll down | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-y>` | `n`, `v` | Scroll up | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<BS>` | `c` | Custom backspace behavior | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Keymaps in Oil.nvim

| Key | Description | Config File |
|-----|-------------|-------------|
| `<CR>` | Select file | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `-` | Move to parent directory | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Keymap Configuration Location

All keymaps are defined in [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua). This file is divided into the following functions:

- `M.native()` - Neovim native feature keymaps
- `M.editing()` - Editing-related keymaps
- `M.lsp()` - LSP-related keymaps
- `M.telescope()` - Telescope-related keymaps
- `M.no_neck_pain()` - No Neck Pain-related keymaps
- `M.oil()` - Oil.nvim-related keymaps
- `M.leap()` - Leap-related keymaps
- `M.completion()` - Completion-related keymaps
- `M.blame()` - Git Blame-related keymaps


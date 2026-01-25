# Editing/Movement Plugins

This page describes plugins related to text editing and movement.

## leap.nvim <a href="https://github.com/ggandor/leap.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Provides fast text movement.

**Configuration file**: [`lua/peinan/plugins/leap.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/leap.lua)

**Dependencies**:
- vim-repeat

**Main features**:
- Fast jumping with 2-character input
- Forward and backward jumping
- Visual mode support

**Keymaps**:
- `s` - Forward jump
- `S` - Backward jump

**Configuration**:
```lua
require("leap")
require("peinan.keymaps.init").leap()
```

**Usage**:
1. Press `s` or `S`
2. Enter 2 characters for the position you want to jump to
3. Jump to the matching position

This plugin allows faster movement between text than traditional `/` search.


# UI/UX Plugins

This page describes plugins related to user interface and user experience.

## dashboard-nvim <a href="https://github.com/glepnir/dashboard-nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Provides a startup dashboard.

**Configuration file**: [`lua/peinan/plugins/dashboard.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/dashboard.lua)

**Main features**:
- Display recently opened files
- Display recently opened projects
- Quick action shortcuts

**Configuration**:
```lua
config.mru = {
    label = " Recent Files",
    limit = 10,
}

config.project = {
    label = " Recent Projects",
    limit = 10,
}

config.shortcut = {
    { desc = "󰠮  Notes ", action = "enew | set filetype=markdown", key = "n" },
    { desc = "   Update ", action = "Lazy sync", key = "uu" },
    { desc = " 󰱼  File ", action = "Telescope find_files cwd=~", key = "ff" },
    { desc = " 󰓅  Profile ", action = "Lazy profile", key = "p" },
    { desc = " 󰅙  Quit ", action = "q!", key = "q" },
}
```

## no-neck-pain.nvim <a href="https://github.com/shortcuts/no-neck-pain.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Provides center focus mode. Places the editor in the center and adds margins on the sides.

**Configuration file**: [`lua/peinan/plugins/no-neck-pain.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/no-neck-pain.lua)

**Keymaps**:
- `<leader>n` - Toggle No Neck Pain

## neoscroll.nvim <a href="https://github.com/karb94/neoscroll.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Provides smooth scroll animations.

**Configuration file**: [`lua/peinan/plugins/neoscroll-nvim.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/neoscroll-nvim.lua)

**Main features**:
- Smooth scroll animations
- Customizable scroll speed

## indent-blankline.nvim <a href="https://github.com/lukas-reineke/indent-blankline.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Displays indent guides.

**Configuration file**: [`lua/peinan/plugins/indent-blankline.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/indent-blankline.lua)

**Main features**:
- Indent level visualization
- Customizable display style

## oil.nvim <a href="https://github.com/stevearc/oil.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Functions as a file explorer.

**Configuration file**: [`lua/peinan/plugins/oil-nvim.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/oil-nvim.lua)

**Keymaps**:
- `<leader>e` - Toggle Oil
- `<CR>` - Select file
- `-` - Move to parent directory

**Main features**:
- File explorer that works as a buffer
- File operations (copy, move, delete, etc.)
- Git integration

## telescope.nvim <a href="https://github.com/nvim-telescope/telescope.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Provides a powerful fuzzy finder.

**Configuration file**: [`lua/peinan/plugins/telescope.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/telescope.lua)

**Dependencies**:
- plenary.nvim
- popup.nvim
- quicker.nvim

**Main features**:
- File search
- Text search (live grep)
- Buffer search
- LSP features (definitions, references, implementations, etc.)
- Diagnostics search
- TODO search
- Many other search features

**Keymaps**: See the Telescope-related section in [Keymaps List](/keymaps/)

**Configuration features**:
- Custom layout settings
- Preview functionality
- Custom border characters
- File type-specific settings

## lualine.nvim <a href="https://github.com/nvim-lualine/lualine.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Provides a status line.

**Configuration file**: [`lua/peinan/plugins/lualine.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/lualine.lua)

**Dependencies**:
- nvim-web-devicons

**Main features**:
- Mode display
- Git branch display
- Git diff display
- LSP diagnostics display
- LSP server display
- Various state displays (virtual diagnostics, format, Zen mode, etc.)
- Recording state display

**Configuration features**:
- Transparent background theme
- File type-specific custom settings (Oil, Telescope, etc.)
- Dynamic color changes (based on state)

## noice.nvim <a href="https://github.com/folke/noice.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Improves command line UI.

**Configuration file**: [`lua/peinan/plugins/noice.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/noice.lua)

**Dependencies**:
- nui.nvim
- nvim-notify

**Main features**:
- Command history display
- Notification display
- LSP message display
- Command line improvements

**Keymaps**:
- `<C-d>` / `<C-u>` - Scroll LSP messages
- `<C-m>` - Dismiss Noice

## gitsigns.nvim <a href="https://github.com/lewis6991/gitsigns.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Displays Git changes in the sign column.

**Configuration file**: [`lua/peinan/plugins/gitsigns.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/gitsigns.lua)

**Main features**:
- Display added lines
- Display changed lines
- Display deleted lines
- Display staging state

**Configuration**:
```lua
local signs = {
    add = { text = "│" },
    change = { text = "│" },
    delete = { text = "│" },
    topdelete = { text = "│" },
    changedelete = { text = "│" },
    untracked = { text = "│" },
}
```

## diffview.nvim <a href="https://github.com/sindrets/diffview.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Displays Git diffs.

**Configuration file**: [`lua/peinan/plugins/diffview.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/diffview.lua)

**Keymaps**:
- `<leader>v` - Toggle Diffview

**Main features**:
- Git diff display
- File diff display
- Commit history display

## git-blame.nvim <a href="https://github.com/f-person/git-blame.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Displays Git blame information.

**Configuration file**: [`lua/peinan/plugins/git-blame.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/git-blame.lua)

**Keymaps**:
- `<leader>b` - Toggle Git Blame

**Main features**:
- Display Git blame information for each line
- Display commit information


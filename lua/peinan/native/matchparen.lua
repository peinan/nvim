-- Configure bracket/parenthesis matching highlighting
-- This makes it easier to see matching brackets when the cursor is inside them

-- Ensure the matchparen plugin is loaded (it's built-in to Neovim)
vim.cmd("runtime plugin/matchparen.vim")

-- Configure the highlight for matching parentheses/brackets
-- MatchParen is the highlight group used by the matchparen plugin
vim.api.nvim_set_hl(0, "MatchParen", {
    bg = "#3b4261", -- Subtle background highlight
    fg = "#c0caf5", -- Light foreground color
    bold = true, -- Make it bold for better visibility
    underline = true, -- Add underline for extra emphasis
})

-- Optionally, you can also set the timeout for matchparen
-- This determines how quickly the match is highlighted (in milliseconds)
vim.g.matchparen_timeout = 20
vim.g.matchparen_insert_timeout = 20

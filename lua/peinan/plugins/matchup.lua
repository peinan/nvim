-- Configure vim-matchup for bracket matching highlighting
-- This plugin highlights matching brackets even when the cursor is inside them,
-- not just when the cursor is on the bracket itself

-- Disable the default matchparen plugin since vim-matchup replaces it
vim.g.loaded_matchparen = 1

-- Configure matchup behavior
vim.g.matchup_matchparen_offscreen = {} -- Disable offscreen match popup
vim.g.matchup_matchparen_deferred = 1 -- Improve performance by deferring highlighting
vim.g.matchup_matchparen_hi_surround_always = 1 -- Always highlight surrounding brackets

-- Configure the highlight for matching parentheses/brackets
vim.api.nvim_set_hl(0, "MatchParen", {
    bg = "#3b4261", -- Subtle background highlight
    fg = "#c0caf5", -- Light foreground color
    bold = true, -- Make it bold for better visibility
    underline = true, -- Add underline for extra emphasis
})

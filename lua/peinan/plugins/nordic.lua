require("nordic").load({
    cursorline = {
        theme = "dark",
    },
    telescope = {
        style = "classic",
    },
    on_highlight = function(highlights, palette)
        highlights.Visual = { bg = palette.gray2 }
    end,
})

require("lualine").setup({
    options = { theme = "nordic" },
})

-- Notify on file save
vim.api.nvim_create_autocmd("BufWritePost", {
    callback = function()
        local filename = vim.fn.expand("%:t")
        vim.notify(" `" .. filename .. "` saved", vim.log.levels.INFO)
    end,
})

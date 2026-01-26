local M = {}

M.should_setup = true

function M.init()
    -- Editor specific configs.
    if vim.g.vscode then
        require("peinan.environments.vscode")
        M.should_setup = false
        return
    end

    -- Setup environment variables.
    local U = require("peinan.utils.lua")
    local env_file = os.getenv("HOME") .. "/.private/nvim_env.lua"
    if U.file_exists(env_file) then
        vim.cmd("luafile " .. env_file)
    end

    -- This makes neovim load faster.
    vim.loader.enable()

    if vim.g.neovide then
        require("peinan.environments.neovide")
        return
    end

    if os.getenv("TERM_PROGRAM") == "WezTerm" then
        require("peinan.environments.wezterm")
    end
end

M.init()

return M

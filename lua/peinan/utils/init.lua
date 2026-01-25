local M = require("peinan.utils.lua")

M = M.merge(M, require("peinan.utils.chars"))
M = M.merge(M, require("peinan.utils.neovim"))
M = M.merge(M, require("peinan.utils.git"))

return M

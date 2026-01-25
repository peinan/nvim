-- Order is important.

if not require("peinan.environments").should_setup then
    return
end

require("peinan.native.options")
require("peinan.loader")
require("peinan.native")
require("peinan.keymaps").init()

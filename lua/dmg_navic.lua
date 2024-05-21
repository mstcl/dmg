---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- NAVIC
		NavicSeparator({ bg = "#ded8d3", fg = "#837163" }),
		NavicText({ base.StatusLineNC }),
	}
end)

return spec

---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- ARROW
		ArrowAction({ fg = "#184e1e" }),
		ArrowCurrentFile({ gui = "bold", fg = "#493f37" }),
		ArrowFileIndex({ fg = "#74351e" }),
	}
end)

return spec

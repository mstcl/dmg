---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		-- TS RAINBOW
		TSRainbowViolet({ fg = "#8e3d63" }),
		TSRainbowRed({ fg = "#752c5f" }),
		TSRainbowBlue({ fg = "#72347c" }),
		TSRainbowCyan({ fg = "#8a6229" }),
		TSRainbowGreen({ fg = "#24752d" }),
		TSRainbowYellow({ fg = "#813b21" }),
	}
end)
return spec

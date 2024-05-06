---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- DAP UI
		DapUISource({ base.Keyword }),
		DapUIVariable({ base.Normal }),
		DapUIValue({ base.Normal }),
		DapUIFrameName({ base.Normal }),
		DapUIScope({ fg = "#483d8b" }),
		DapUIType({ DapUIScope }),
		DapUIDecoration({ DapUIScope }),
		DapUIStoppedThread({ DapUIScope }),
		DapUILineNumber({ DapUIScope }),
		DapUIFloatBorder({ DapUIScope }),
		DapUIBreakpointsCurrentLine({ gui = "bold" }),
		DapUIBreakpointsInfo({ fg = "#24752d" }),
		DapUIWatchesError({ fg = "#5e2b66" }),
		DapUIWatchesValue({ fg = "#184e1e" }),
		DapUIWatchesEmpty({ fg = "#72347c" }),
		DapUIThread({ fg = "#184e1e" }),
		DapUIModifiedValue({ gui = "bold" }),
		DapUIBreakpointsPath({ DapLogPoint }),
	}
end)
return spec

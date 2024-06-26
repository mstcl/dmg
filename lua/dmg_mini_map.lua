---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- MINI MAP
		MiniMapNormal({ fg = "#c8beb7" }),
		MiniMapSymbolView({ MiniMapNormal }),
		MiniMapSymbolLine({ base.Comment }),
	}
end)

return spec

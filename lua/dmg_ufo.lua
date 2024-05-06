---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- UFO
		UfoFoldedBg({ bg = "#e1d2d6" }),
		UfoPreviewWinBar({ UfoFoldedBg }),
		UfoFoldedFg({ fg = "#161e29" }),
		UfoFoldedEllipsis({ base.Comment }),
		UfoCursorFoldedLine({ UfoFoldedBg }),
		UfoPreviewThumb({ base.PmenuThumb }),
		UfoPreviewSbar({ base.PmenuSbar }),
		UfoPreviewCursorLine({ base.Visual }),
	}
end)
return spec

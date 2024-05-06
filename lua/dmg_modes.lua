---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		-- MODES
		ModesVisual({ bg = "#483d8b" }),
		ModesDelete({ bg = "#752c5f" }),
		ModesInsert({ bg = "#813b21" }),
		ModesCopy({ bg = "#72347c" }),
		ModesCopyCursorLine({ bg = "#d7cad3" }),
		ModesCopyCursorLineNr({ bg = "#d7cad3" }),
		ModesCopyCursorLineSign({ bg = "#d7cad3" }),
		ModesCopyCursorLineFold({ bg = "#d7cad3" }),
		ModesDeleteCursorLine({ bg = "#d8c9ce" }),
		ModesDeleteCursorLineNr({ bg = "#d8c9ce" }),
		ModesDeleteCursorLineSign({ bg = "#d8c9ce" }),
		ModesDeleteCursorLineFold({ bg = "#d8c9ce" }),
		ModesInsertCursorLine({ bg = "#d9ccc5" }),
		ModesInsertCursorLineNr({ bg = "#d9ccc5" }),
		ModesInsertCursorLineSign({ bg = "#d9ccc5" }),
		ModesInsertCursorLineFold({ bg = "#d9ccc5" }),
		ModesVisualCursorLine({ bg = "#d1ccd5" }),
		ModesVisualCursorLineNr({ bg = "#d1ccd5" }),
		ModesVisualCursorLineSign({ bg = "#d1ccd5" }),
		ModesVisualCursorLineFold({ bg = "#d1ccd5" }),
		ModesInsertModeMsg({ fg = "#813b21" }),
		ModesVisualModeMsg({ fg = "#483d8b" }),
		ModesVisualVisual({ bg = "#d1ccd5" }),
	}
end)
return spec

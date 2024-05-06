---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		-- GLANCE
		GlancePreviewNormal({ bg = "#dcd8d5" }),
		GlancePreviewCursorLine({ bg = "#d1cbc6" }),
		GlancePreviewSignColumn({ fg = "#dcd8d5" }),
		GlanceListCursorLine({ bg = "#cac4bf" }),
		GlanceListNormal({ bg = "#d5d1ce", fg = "#161e29" }),
		GlanceListFilepath({ fg = "#000000" }),
		GlanceWinBarFilename({ bg = "#d0ccc9", fg = "#161e29" }),
		GlanceWinBarFilepath({ bg = "#d0ccc9", fg = "#000000" }),
		GlanceWinBarTitle({ bg = "#d0ccc9", fg = "#161e29" }),
		GlanceIndent({ fg = "#4a3f36" }),
		GlanceFoldIcon({ fg = "#000000" }),
		GlanceListEndOfBuffer({ bg = "#d5d1ce", fg = "#d5d1ce" }),
		GlancePreviewEndOfBuffer({ bg = "#dcd8d5", fg = "#dcd8d5" }),
		GlanceBorderTop({ bg = "#d0ccc9", fg = "#c8beb7" }),
		GlanceListBorderBottom({ bg = "#d5d1ce", fg = "#c8beb7" }),
		GlancePreviewBorderBottom({ bg = "#dcd8d5", fg = "#c8beb7" }),
		GlancePreviewMatch({ fg = "#e9e5e2" }),
		GlancePreviewLineNr({}),
		GlanceListMatch({}),
		GlanceListFilename({}),
		GlanceListCount({}),
	}
end)
return spec

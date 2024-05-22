---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- NEOGIT
		NeogitHunkHeaderCursor({ bg = "#ded8d3", gui="bold", fg = "#161e29" }),
		NeogitHunkHeaderHighlight({ bg = "#ded8d3", gui="bold", fg = "#161e29" }),
		NeogitHunkHeader({ bg = "#e9e5e2", fg = "#837163" }),
		NeogitSectionHeader({ bg = "#d1ccde", gui = "bold", fg = "#26126d" }),
		NeogitCursorLine({ base.CursorLine }),
		NeogitDiffContextHighlight({ bg = "#ded8d3" }),
		NeogitDiffContextCursor({ bg = "#ded8d3" }),
		NeogitDiffContext({ bg = "#e9e5e2", fg = "#837163" }),
	}
end)
return spec

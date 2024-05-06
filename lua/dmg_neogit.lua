---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		-- NEOGIT
		NeogitHunkHeader({ bg = "#d1bed0", fg = "#5e2b66" }),
		NeogitSectionHeader({ bg = "#dbc4c8", fg = "#630e49" }),
		NeogitCursorLine({ bg = "#ded8d3" }),
	}
end)
return spec

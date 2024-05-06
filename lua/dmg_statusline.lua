---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		-- STATUSLINE EXTRA
		StatuslineRed({ bg = "#ded8d3", fg = "#630e49" }),
		StatuslineBlue({ bg = "#ded8d3", fg = "#26126d" }),
		StatuslineMagenta({ bg = "#ded8d3", fg = "#5e2b66" }),
		StatuslineOrange({ bg = "#ded8d3", fg = "#74351e" }),
		StatuslineGreen({ bg = "#ded8d3", fg = "#184e1e" }),
		StatuslinePink({ bg = "#ded8d3", fg = "#793454" }),
		StatuslineYellow({ bg = "#ded8d3", fg = "#573e1a" }),
		Statusline({ bg = "#ded8d3", fg = "#161e29" }),
		StatuslineAlt({ bg = "#ded8d3", fg = "#837163" }),
		StatuslineModified({ bg = "#26126a", gui = "bold", fg = "#ded8d3" }),
		StatuslineMode({ bg = "#752c5f", gui = "bold", fg = "#ded8d3" }),
	}
end)
return spec

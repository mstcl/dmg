---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		-- LSP INLAY HINT
		LspInlayHint({ bg = "#ded8d3", fg = "#837163" }),
	}
end)
return spec

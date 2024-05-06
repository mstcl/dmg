---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		-- FLOATERM/TOGGLETERM
		Floaterm({ bg = "#c8beb7", fg = "#161e29" }),
	}
end)
return spec

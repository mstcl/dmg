---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		-- FLASH
		FlashLabel({ bg = "#d1ccde", fg = "#26126d" }),
		FlashBackdrop({ fg = "#837163" }),
	}
end)
return spec

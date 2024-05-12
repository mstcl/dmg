---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		-- FLASH
		FlashLabel({ bg = "#d1ccde", fg = "#26126d" }),
		FlashPromptIcon({ bg = "#26126a", gui = "bold", fg = "#ded8d3" }),
		FlashBackdrop({ fg = "#837163" }),
	}
end)
return spec

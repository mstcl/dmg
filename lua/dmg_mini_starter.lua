---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- MINI STARTER
		MiniStarterInactive({ base.NonText }),
		MiniStarterQuery({}),
		MiniStarterCurrent({ fg = "#630e49" }),
		MiniStarterItemBullet({ MiniStarterCurrent }),
		MiniStarterItemPrefix({ MiniStarterCurrent }),
		MiniStarterHeader({ fg = "#837163" }),
		MiniStarterFooter({ MiniStarterHeader }),
		MiniStarterItem({ MiniStarterHeader }),
	}
end)

return spec

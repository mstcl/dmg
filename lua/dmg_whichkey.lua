---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- WHICHKEY
		WhichKeyFloat({ base.Pmenu }),
		WhichKeyValue({}),
		WhichKeyDesc({}),
		WhichKeyGroup({}),
		WhichKeySeparator({}),
		WhichKey({}),
		WhichKeyBorder({}),
	}
end)
return spec

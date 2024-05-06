---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- NVIM NOTIFY
		NotifyINFOBody({ bg = "#c8beb7", fg = "#161e29" }),
		NotifyERRORBody({ NotifyINFOBody }),
		NotifyTRACEBody({ NotifyINFOBody }),
		NotifyWARNBody({ NotifyINFOBody }),
		NotifyERRORIcon({ bg = "#c8beb7", fg = "#752c5f" }),
		NotifyBackground({ base.Pmenu }),
		NotifyINFOIcon({ bg = "#c8beb7", fg = "#24752d" }),
		NotifyINFOTitle({ NotifyINFOIcon }),
		NotifyWARNIcon({ bg = "#c8beb7", fg = "#813b21" }),
		NotifyWARNTitle({ NotifyWARNIcon }),
		NotifyTRACEIcon({ bg = "#c8beb7", fg = "#72347c" }),
		NotifyTRACETitle({ NotifyTRACEIcon }),
		NotifyINFOBorder({ bg = "#c8beb7", fg = "#c8beb7" }),
		NotifyERRORBorder({ NotifyINFOBorder }),
		NotifyWARNBorder({ NotifyINFOBorder }),
		NotifyTRACEBorder({ NotifyINFOBorder }),
	}
end)
return spec

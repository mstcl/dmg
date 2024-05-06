---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function()
	return {
		-- DAP
		DapBreakpointRejected({ bg = "#dcb892", fg = "#74351e" }),
		DapStopped({ bg = "#d0d8cc", fg = "#184e1e" }),
		DapLogPoint({ bg = "#d6c890", fg = "#573e1a" }),
		DapBreakpointCondition({ bg = "#deb9b9", fg = "#793454" }),
		DapBreakpoint({ bg = "#d1bed0", fg = "#5e2b66" }),
		-- NVIM DAP
		NvimDapVirtualTextChanged({ base.Keyword }),
		NvimDapVirtualText({ base.Comment }),
		NvimDapSubtleFrame({ base.Comment }),

	}
end)
return spec

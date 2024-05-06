---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local lsp = require("dmg_lsp")
local spec = lush(function()
	return {
		-- TROUBLE
		TroubleCount({ gui = "undercurl", fg = "#74351e" }),
		TroubleSource({ base.Comment }),
		TroubleCode({ base.Comment }),
		TroubleNormal({ bg = "#ded8d3", fg = "#161e29" }),
		TroubleSignHint({ lsp.DiagnosticSignHint }),
		TroubleSignInformation({ lsp.DiagnosticSignInfo }),
		TroubleSignWarning({ lsp.DiagnosticSignWarn }),
		TroubleSignError({ lsp.DiagnosticSignError }),
		TroubleText({ base.Normal }),
		TroublePreview({ base.Search }),
		TroubleFile({ base.Directory }),
	}
end)

return spec

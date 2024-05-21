---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- DIAGNOSTICS
		DiagnosticWarn({ base.Warning }),
		DiagnosticInfo({ base.Info }),
		DiagnosticHint({ base.Hint }),
		DiagnosticError({ base.Error }),
		DiagnosticOk({ base.DiffAdd }),
		DiagnosticUnnecessary({ gui = "underdotted", sp = "#574b42" }),
		DiagnosticFloatingWarn({ base.WarningMsg }),
		DiagnosticFloatingInfo({ base.InfoMsg }),
		DiagnosticFloatingHint({ base.HintMsg }),
		DiagnosticFloatingError({ base.ErrorMsg }),
		DiagnosticUnderlineError({ base.SpellBad }),
		DiagnosticUnderlineHint({ base.SpellCap }),
		DiagnosticUnderlineInfo({ base.SpellRare }),
		DiagnosticUnderlineWarn({ base.SpellLocal }),
		DiagnosticUnderlineOk({ gui = "undercurl", sp = "#184e1e" }),
		DiagnosticFloatingOk({ fg = "#184e1e" }),
		DiagnosticSignOk({ DiagnosticFloatingOk }),
		DiagnosticSignError({ bg = "#dcb892", fg = "#74351e" }),
		DiagnosticSignWarn({ bg = "#d6c890", fg = "#573e1a" }),
		DiagnosticSignInfo({ bg = "#dbc4c8", fg = "#26126d" }),
		DiagnosticSignHint({ bg = "#dbc4c8", fg = "#630e49" }),
		LspDiagnosticsSignError({ DiagnosticSignError }),
		LspDiagnosticsSignWarning({ DiagnosticSignWarn }),
		LspDiagnosticsSignInformation({ DiagnosticSignInfo }),
		LspDiagnosticsSignHint({ DiagnosticSignHint }),
		LspInfoFiletype({}),
		LspInfoTitle({}),
		LspInfoTip({}),
		LspInfoList({}),
		LspInfoBorder({}),
		-- LSP INLAY HINT
		LspInlayHint({ bg = "#ded8d3", fg = "#837163" }),
		-- SEMANTIC TOKENS
		sym("@lsp.type.keyword.yaml.ansible")({ base.Special })
	}
end)
return spec

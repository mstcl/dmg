---@diagnostic disable: undefined-global
local lushwright = require("shipwright.transform.lush")
run(
	require("dmg"),
	lushwright.to_vimscript,
	{ prepend, "set background=light" },
	{ prepend, 'let g:colors_name="dmg"' },
	{ overwrite, "colors/dmg.vim" }
)

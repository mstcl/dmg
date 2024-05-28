---@diagnostic disable: undefined-global
local lushwright = require("shipwright.transform.lush")
run(
	require("dmg"),
	lushwright.to_vimscript,
	{ prepend, "set background=light" },
	{ prepend, 'let g:colors_name="dmg"' },
	{ patchwrite, "colors/dmg.vim", "\" PATCH BEGIN", "\" PATCH END" }
)

local lushwright = require("shipwright.transform.lush")
---@diagnostic disable-next-line: undefined-global
run(
	require("dmg"),
	lushwright.to_lua,
	---@diagnostic disable-next-line: undefined-global
	{ patchwrite, "colors/dmg.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" }
)

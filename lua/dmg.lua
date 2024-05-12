---@diagnostic disable: undefined-global
local lush = require("lush")
local default = lush.merge({
	require("dmg_base"),
	require("dmg_treesitter"),
	require("dmg_lsp"),
})

return default

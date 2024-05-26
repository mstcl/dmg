# dmg

**A light neovim colorscheme based on DMG-01**

See [vimcolorschemes](https://vimcolorschemes.com/mstcl/dmg) for a preview.

## Installation

Using lazy.nvim:

```lua
{
	"mstcl/dmg",
	lazy = false,
	priority = 1000,
    dependencies = {
        "rktjmp/lush.nvim",
    },
	config = function()
		vim.cmd.colorscheme("dmg")
	end,
},
```

## Integration with plugins

All modules are found in the `lua` directory.

By default, only Treesitter and LSP highlights are loaded. To extend, we use
[Lush](https://github.com/rktjmp/lush.nvim) to extend the colorscheme. The
easiest way is to add a new theme. For example, copy the content of
`colors/dmg.lua` into `~/.config/nvim/colors/dmg_extended.lua` and use
`lush.merge()` to extend:

```lua
vim.opt.background = "light"
vim.g.colors_ame = "dmg_extended"

vim.g.terminal_color_0 = "#c8beb7"
vim.g.terminal_color_1 = "#630e49"
vim.g.terminal_color_2 = "#74351e"
vim.g.terminal_color_3 = "#184e1e"
vim.g.terminal_color_4 = "#26126d"
vim.g.terminal_color_5 = "#793454"
vim.g.terminal_color_6 = "#5e2b66"
vim.g.terminal_color_7 = "#161e29"
vim.g.terminal_color_8 = "#bdb1a8"
vim.g.terminal_color_9 = "#752c5f"
vim.g.terminal_color_10 = "#813b21"
vim.g.terminal_color_11 = "#24752d"
vim.g.terminal_color_12 = "#483d8b"
vim.g.terminal_color_13 = "#72347c"
vim.g.terminal_color_14 = "#8e3d63"
vim.g.terminal_color_15 = "#2c2621"

package.loaded["dmg"] = nil

local lush = require("lush")
local extended = lush.merge({
	require("dmg"), -- This is the base colorscheme
	require("dmg_statusline"),
	require("dmg_mini_starter"),
	require("dmg_telescope"),
	require("dmg_whichkey"),
	require("dmg_neogit"),
	require("dmg_incline"),
	require("dmg_cmp"),
	require("dmg_flash"),
    require("dmg_mason"),
    require("dmg_dressing"),
    require("dmg_null_ls"),
    require("dmg_navic"),
})

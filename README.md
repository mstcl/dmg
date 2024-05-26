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
	config = function()
		vim.cmd.colorscheme("dmg")
	end,
},
```

## Extending using Lush

By default, only Treesitter and LSP highlights are loaded. To extend, we use
[Lush](https://github.com/rktjmp/lush.nvim) to extend the colorscheme.

The easiest way is to add a new theme. For example, make the file
`~/.config/nvim/colors/dmg_extended.lua` and use `lush.merge()` to extend:

```lua
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.o.termguicolors = true
vim.o.background = "light"
vim.g.colors_name = "dmg_extended"

package.loaded["dmg"] = nil

local lush = require("lush")
local extended = lush.merge({
	require("dmg"),
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
    require("dmg_dap"),
    require("dmg_dap_ui"),
    require("dmg_bufferline"),
})

lush(extended)
```

Then modify the plugin spec to add Lush as a dependency, and use the extended
colorscheme:

```lua
{
    -- Colorscheme
    "mstcl/dmg",
    lazy = false,
    priority = 1000,
    dependencies = {
        "rktjmp/lush.nvim",
    },
    config = function()
        vim.cmd.colorscheme("dmg_extended")
    end,
},
```

All available integrations are found in the `lua` directory.

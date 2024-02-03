# dmg

__A neovim colorscheme based on DMG-01__

![preview](pics/preview.png)

## Installation

Using lazy.nvim:

```lua
{
	"mstcl/dmg",
	lazy = false,
	priority = 1000,
	config = function()
		vim.api.nvim_command("colorscheme dmg")
	end,
},
```

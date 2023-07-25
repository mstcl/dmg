# dmg

__A neovim colorscheme based on DMG-01__

<img src="./pics/2023-06-13_19-49.png" alt="Editor" width="500"/>

## Installation

Using lazy.nvim:

```
{
	"git.bim.boats/dmg",
	lazy = false,
	priority = 1000,
	config = function()
		vim.api.nvim_command("colorscheme dmg")
	end,
},
```

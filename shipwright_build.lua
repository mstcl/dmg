local colorscheme = require("src.dmg")
local lushwright = require("shipwright.transform.lush")
run(
  colorscheme,
  lushwright.to_vimscript,
  { append, { "set background=light", 'let g:colors_name="dmg"' } },
  { overwrite, "colors/dmg.vim" }
)

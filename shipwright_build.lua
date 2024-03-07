local colorscheme = require("src.dmg")
local lushwright = require("shipwright.transform.lush")
run(
  colorscheme,
  lushwright.to_vimscript,
  { append, {
    "set background=light",
    "let g:colors_name='dmg'",
    "let g:terminal_color_0='#c8beb7'",
    "let g:terminal_color_1='#630e49'",
    "let g:terminal_color_2='#74351e'",
    "let g:terminal_color_3='#184e1e'",
    "let g:terminal_color_4='#26126d'",
    "let g:terminal_color_5='#793454'",
    "let g:terminal_color_6='#5e2b66'",
    "let g:terminal_color_7='#161e29'",
    "let g:terminal_color_8='#bdb1a8'",
    "let g:terminal_color_9='#752c5f'",
    "let g:terminal_color_10='#813b21'",
    "let g:terminal_color_11='#24752d'",
    "let g:terminal_color_12='#483d8b'",
    "let g:terminal_color_13='#72347c'",
    "let g:terminal_color_14='#8e3d63'",
    "let g:terminal_color_15='#2c2621'",
  } },
  { overwrite, "colors/dmg.vim" }
)

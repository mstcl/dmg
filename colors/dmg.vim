" PATCH BEGIN
let g:colors_name="dmg"
set background=light
highlight Normal guifg=#161e29 guibg=#e9e5e2 guisp=NONE blend=NONE gui=NONE
highlight Boolean guifg=#813b21 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link @boolean Boolean
highlight Character guifg=#184e1e guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link SpecialKey Character
highlight! link @character Character
highlight! link @string.escape Character
highlight ColorColumn guifg=NONE guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight! link debugPC ColorColumn
highlight Comment guifg=#837163 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight! link @comment Comment
highlight! link @lsp.type.comment Comment
highlight! link @text.literal Comment
highlight! link @org.agenda.deadline Conceal
highlight! link @punctuation.bracket Conceal
highlight Conditional guifg=#74351e guibg=NONE guisp=NONE blend=NONE gui=italic
highlight! link PreCondit Conditional
highlight! link Typedef Conditional
highlight! link @conditional Conditional
highlight! link @constant.builtin Conditional
highlight Constant guifg=#26126d guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link @constant Constant
highlight! link @lsp.type.enumMember Constant
highlight CurSearch guifg=NONE guibg=#d1ccde guisp=NONE blend=NONE gui=NONE
highlight CursorColumn guifg=NONE guibg=#493f37 guisp=NONE blend=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight CursorLineNr guifg=#493f37 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Define guifg=#26126d guibg=NONE guisp=NONE blend=NONE gui=italic
highlight! link @constant.macro Define
highlight! link @define Define
highlight! link @keyword Define
highlight! link @type.definition Define
highlight Delimiter guifg=#9e8d7f guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link Conceal Delimiter
highlight! link Noise Delimiter
highlight! link @markup.heading.1.marker Delimiter
highlight! link @markup.heading.2.marker Delimiter
highlight! link @markup.heading.3.marker Delimiter
highlight! link @markup.heading.4.marker Delimiter
highlight! link @markup.heading.5.marker Delimiter
highlight! link @markup.heading.6.marker Delimiter
highlight! link @punctuation Delimiter
highlight DiagnosticFloatingOk guifg=#184e1e guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link DiagnosticSignOk DiagnosticFloatingOk
highlight DiagnosticSignError guifg=#74351e guibg=#dcb892 guisp=NONE blend=NONE gui=NONE
highlight! link LspDiagnosticsSignError DiagnosticSignError
highlight DiagnosticSignHint guifg=#630e49 guibg=#dbc4c8 guisp=NONE blend=NONE gui=NONE
highlight! link LspDiagnosticsSignHint DiagnosticSignHint
highlight DiagnosticSignInfo guifg=#26126d guibg=#dbc4c8 guisp=NONE blend=NONE gui=NONE
highlight! link LspDiagnosticsSignInformation DiagnosticSignInfo
highlight DiagnosticSignWarn guifg=#573e1a guibg=#d6c890 guisp=NONE blend=NONE gui=NONE
highlight! link LspDiagnosticsSignWarning DiagnosticSignWarn
highlight DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#184e1e blend=NONE gui=undercurl
highlight DiagnosticUnnecessary guifg=NONE guibg=NONE guisp=#574b42 blend=NONE gui=underdotted
highlight DiffAdd guifg=#637337 guibg=#dae5cd guisp=NONE blend=NONE gui=NONE
highlight! link Added DiffAdd
highlight! link DiagnosticOk DiffAdd
highlight! link diffAdded DiffAdd
highlight DiffChange guifg=#705357 guibg=#e1d2d6 guisp=NONE blend=NONE gui=NONE
highlight DiffDelete guifg=#834c40 guibg=#ecd5d3 guisp=NONE blend=NONE gui=NONE
highlight! link Removed DiffDelete
highlight! link Todo DiffDelete
highlight! link diffRemoved DiffDelete
highlight DiffFGAdd guifg=#637337 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffFGChange guifg=#705357 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffFGDelete guifg=#834c40 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffFGText guifg=#2c2621 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffText guifg=#2c2621 guibg=#c8beb7 guisp=NONE blend=NONE gui=NONE
highlight Directory guifg=#483d8b guibg=NONE guisp=NONE blend=NONE gui=bold
highlight! link @namespace Directory
highlight! link @org.agenda.scheduled Directory
highlight Error guifg=#74351e guibg=#dcb892 guisp=NONE blend=NONE gui=NONE
highlight! link DiagnosticError Error
highlight! link @text.danger Error
highlight ErrorMsg guifg=#74351e guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link DiagnosticFloatingError ErrorMsg
highlight! link debugBreakpoint ErrorMsg
highlight! link @function.macro ErrorMsg
highlight Exception guifg=#630e49 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight FloatBorder guifg=#c8beb7 guibg=#c8beb7 guisp=NONE blend=NONE gui=NONE
highlight FloatFooter guifg=#493f37 guibg=#c8beb7 guisp=NONE blend=NONE gui=bold
highlight FloatShadow guifg=NONE guibg=black guisp=NONE blend=80 gui=NONE
highlight FloatShadowThrough guifg=NONE guibg=black guisp=NONE blend=100 gui=NONE
highlight FloatTitle guifg=#493f37 guibg=#c8beb7 guisp=NONE blend=NONE gui=bold
highlight FoldColumn guifg=#9e8d7f guibg=#e9e5e2 guisp=NONE blend=NONE gui=bold
highlight! link CursorLineFold FoldColumn
highlight Folded guifg=#9e8d7f guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight Function guifg=#26126d guibg=NONE guisp=NONE blend=NONE gui=bold
highlight! link @function Function
highlight! link @lsp.type.decorator Function
highlight! link @lsp.type.function Function
highlight! link @lsp.type.method Function
highlight! link @method Function
highlight Hint guifg=#630e49 guibg=#dbc4c8 guisp=NONE blend=NONE gui=NONE
highlight! link DiagnosticHint Hint
highlight HintMsg guifg=#630e49 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link DiagnosticFloatingHint HintMsg
highlight Identifier guifg=#574b42 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link Ignore Identifier
highlight! link Operator Identifier
highlight! link @lsp.type.parameter Identifier
highlight! link @lsp.type.property Identifier
highlight! link @lsp.type.variable Identifier
highlight! link @punctuation.delimiter Identifier
highlight! link @variable Identifier
highlight IncSearch guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=reverse
highlight! link Cursor IncSearch
highlight! link MatchParen IncSearch
highlight Include guifg=#793454 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight! link @include Include
highlight Info guifg=#26126d guibg=#d1ccde guisp=NONE blend=NONE gui=NONE
highlight! link DiagnosticInfo Info
highlight! link @text.note Info
highlight InfoMsg guifg=#26126d guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link DiagnosticFloatingInfo InfoMsg
highlight Keyword guifg=#630e49 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Label guifg=#793454 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight LineNr guifg=#bdb1a8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LspInfoBorder guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LspInfoFiletype guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LspInfoList guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LspInfoTip guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LspInfoTitle guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LspInlayHint guifg=#837163 guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight Macro guifg=#483d8b guibg=NONE guisp=NONE blend=NONE gui=italic
highlight! link @lsp.type.macro Macro
highlight! link @macro Macro
highlight MoreMsg guifg=#837163 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NonText guifg=#c8beb7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link EndOfBuffer NonText
highlight! link Whitespace NonText
highlight NormalFloat guifg=#493f37 guibg=#c8beb7 guisp=NONE blend=NONE gui=NONE
highlight Number guifg=#74351e guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link Float Number
highlight! link Type Number
highlight! link @number Number
highlight Pmenu guifg=#493f37 guibg=#c8beb7 guisp=NONE blend=NONE gui=NONE
highlight! link PmenuExtra Pmenu
highlight! link PmenuKind Pmenu
highlight PmenuSbar guifg=#bdb1a8 guibg=#c8beb7 guisp=NONE blend=NONE gui=NONE
highlight PmenuSel guifg=#493f37 guibg=#bdb1a8 guisp=NONE blend=NONE gui=bold
highlight! link PmenuExtraSel PmenuSel
highlight! link PmenuKindSel PmenuSel
highlight! link WildMenu PmenuSel
highlight PmenuThumb guifg=#837163 guibg=#837163 guisp=NONE blend=NONE gui=NONE
highlight PreProc guifg=#573e1a guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link @preproc PreProc
highlight Question guifg=#573e1a guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link @property Question
highlight QuickFixLine guifg=NONE guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight RedrawDebugClear guifg=NONE guibg=yellow guisp=NONE blend=NONE gui=NONE
highlight RedrawDebugComposed guifg=NONE guibg=green guisp=NONE blend=NONE gui=NONE
highlight RedrawDebugNormal guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=reverse
highlight RedrawDebugRecompose guifg=NONE guibg=red guisp=NONE blend=NONE gui=NONE
highlight Repeat guifg=#630e49 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight! link SpecialChar Repeat
highlight! link @keyword.function Repeat
highlight! link @keyword.return Repeat
highlight! link @repeat Repeat
highlight! link @variable.builtin Repeat
highlight Search guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=reverse
highlight! link Substitute Search
highlight SignColumn guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Special guifg=#26126d guibg=NONE guisp=NONE blend=NONE gui=bold
highlight! link @lsp.type.keyword.yaml.ansible Special
highlight SpecialComment guifg=#574b42 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight! link @lsp.type.keyword.lua SpecialComment
highlight SpellBad guifg=NONE guibg=NONE guisp=#752c5f blend=NONE gui=undercurl
highlight! link DiagnosticUnderlineError SpellBad
highlight SpellCap guifg=NONE guibg=NONE guisp=#72347c blend=NONE gui=undercurl
highlight! link DiagnosticUnderlineHint SpellCap
highlight SpellLocal guifg=NONE guibg=NONE guisp=#813b21 blend=NONE gui=undercurl
highlight! link DiagnosticUnderlineWarn SpellLocal
highlight SpellRare guifg=NONE guibg=NONE guisp=#483d8b blend=NONE gui=undercurl
highlight! link DiagnosticUnderlineInfo SpellRare
highlight Statement guifg=#74351e guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight StatusLine guifg=#161e29 guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight! link MsgArea StatusLine
highlight! link MsgSeparator StatusLine
highlight! link StatusLineTerm StatusLine
highlight StatusLineNC guifg=#574b42 guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight! link StatusLineTermNC StatusLineNC
highlight StorageClass guifg=#74351e guibg=NONE guisp=NONE blend=NONE gui=bold
highlight! link Structure StorageClass
highlight! link @storageclass StorageClass
highlight String guifg=#184e1e guibg=NONE guisp=NONE blend=NONE gui=italic
highlight! link @markup.literal String
highlight! link @string String
highlight TSPlaygroundFocus guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight TSPlaygroundLang guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight TSQueryLinterError guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight TabLine guifg=#746458 guibg=#bdb1a8 guisp=NONE blend=NONE gui=NONE
highlight TabLineFill guifg=NONE guibg=#bdb1a8 guisp=NONE blend=NONE gui=NONE
highlight TabLineSel guifg=#574b42 guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight TermCursor guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=reverse
highlight Title guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight! link @text.title Title
highlight Underlined guifg=#573e1a guibg=NONE guisp=#573e1a blend=NONE gui=underline
highlight! link Tag Underlined
highlight! link @text.underline Underlined
highlight! link @text.uri Underlined
highlight VertSplit guifg=#ded8d3 guibg=#e9e5e2 guisp=NONE blend=NONE gui=NONE
highlight! link WinSeparator VertSplit
highlight Visual guifg=NONE guibg=#c8beb7 guisp=NONE blend=NONE gui=NONE
highlight! link VisualNOS Visual
highlight Warning guifg=#573e1a guibg=#d6c890 guisp=NONE blend=NONE gui=NONE
highlight! link DiagnosticWarn Warning
highlight! link @text.warning Warning
highlight WarningMsg guifg=#573e1a guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link Debug WarningMsg
highlight! link DiagnosticFloatingWarn WarningMsg
highlight! link ModeMsg WarningMsg
highlight WinBar guifg=NONE guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight! link WinBarNC WinBar
highlight lCursor guifg=bg guibg=fg guisp=NONE blend=NONE gui=NONE
highlight @error guifg=#752c5f guibg=NONE guisp=#752c5f blend=NONE gui=undercurl
highlight @exception guifg=#8e3d63 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @field guifg=#493f37 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.builtin guifg=#26126d guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @label guifg=#483d8b guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @markup.heading guifg=#752c5f guibg=NONE guisp=#752c5f blend=NONE gui=bold,underline
highlight @markup.heading.1 guifg=#630e49 guibg=#dbc4c8 guisp=NONE blend=NONE gui=bold
highlight @markup.heading.2 guifg=#26126d guibg=#d1ccde guisp=NONE blend=NONE gui=bold
highlight @markup.heading.3 guifg=#573e1a guibg=#d6c890 guisp=NONE blend=NONE gui=bold
highlight @markup.heading.4 guifg=#793454 guibg=#deb9b9 guisp=NONE blend=NONE gui=bold
highlight @markup.heading.5 guifg=#26126d guibg=#d1ccde guisp=NONE blend=NONE gui=bold
highlight @markup.heading.6 guifg=#5e2b66 guibg=#d1bed0 guisp=NONE blend=NONE gui=bold
highlight @markup.italic guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @markup.link.label guifg=#26126d guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @markup.link.url guifg=#184e1e guibg=NONE guisp=NONE blend=NONE gui=underline
highlight @markup.quote guifg=#574b42 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @markup.raw guifg=#493f37 guibg=#ded8d3 guisp=NONE blend=NONE gui=NONE
highlight @markup.raw.block guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @markup.strikethrough guifg=#493f37 guibg=NONE guisp=NONE blend=NONE gui=strikethrough
highlight @markup.strong guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @org.headline.level1 guifg=#161e29 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @org.headline.level2 guifg=#26126d guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @org.headline.level3 guifg=#793454 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @org.headline.level4 guifg=#184e1e guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @org.headline.level5 guifg=#74351e guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @org.headline.level6 guifg=#573e1a guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @org.keyword.done guifg=#184e1e guibg=#d0d8cc guisp=NONE blend=NONE gui=NONE
highlight @org.keyword.todo guifg=#630e49 guibg=#dbc4c8 guisp=NONE blend=NONE gui=NONE
highlight @parameter guifg=#813b21 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.special guifg=#746458 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @string.special.url guifg=#184e1e guibg=NONE guisp=NONE blend=NONE gui=underline
highlight @text.reference guifg=#793454 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.strike guifg=#493f37 guibg=NONE guisp=NONE blend=NONE gui=strikethrough
" PATCH END

lua << EOF
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
EOF

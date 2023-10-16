vim.g.colors_name = "dmg"

local black0 = { "#161e29", 0, "black" }
local gray0 = { "#574b42", 244, "gray" }
local gray1 = { "#493f37", 237, "darkgrey" }
local gray2 = { "#3a322c", 235, "gray" }
local gray3 = { "#2c2621", 233, "gray" }
local gray5 = { "#746458", 243, "gray" }
local gray6 = { "#837163", 251, "gray" }
local gray7 = { "#9e8d7f", 15, "white" }
local gray8 = { "#bdb1a8", 15, "white" }
local gray9 = { "#c8beb7", 15, "white" }
local white0 = { "#ded8d3", 15, "white" }
local white1 = { "#e9e5e2", 15, "white" }
local red_bg = { "#e5d4e0", 196, "red" }
local red0 = { "#752c5f", 196, "red" }
local red1 = { "#630e49", 124, "darkred" }
local orange_bg = { "#e8c5c5", 208, "darkyellow" }
local orange0 = { "#844242", 208, "darkyellow" }
local orange1 = { "#6a2a2a", 208, "darkyellow" }
local green0 = { "#24752d", 72, "green" }
local green1 = { "#1e6226", 83, "darkgreen" }
local green2 = { "#184e1e", 83, "darkgreen" }
local turquoise_bg = { "#dab791", 38, "cyan" }
local turquoise0 = { "#87591a", 38, "cyan" }
local turquoise1 = { "#522b00", 33, "darkcyan" }
local blue_bg = { "#dfdaf0", 87, "blur" }
local blue0 = { "#483d8b", 87, "blur" }
local blue1 = { "#26126d", 63, "darkblue" }
local magenta0 = { "#baa6b1", 126, "magenta" }
local magenta1 = { "#53424c", 126, "darkmagenta" }
local pink0 = { "#b5a5c7", 38, "white" }
local pink1 = { "#836e9f", 162, "magenta" }
local addfg = { "#4a8000", 51, "cyan" }
local addbg_light = { "#CBE5B8", 51, "cyan" }
local changefg = { "#6b4255", 51, "cyan" }
local changebg_light = { "#d8c0cb", 51, "cyan" }
local delfg = { "#8d2d29", 51, "cyan" }
local delbg_light = { "#eec5c4", 51, "cyan" }

local highlight_group_normal = { fg = black0, bg = white1 }
local statusline_group = { fg = green2, bg = white0 }
local pmenu_group = { fg = gray1, bg = gray9 }
local tabline_group = { bg = gray8 }
local comment_group = { fg = gray6 }

local NONE = {}

local highlight_groups = {
	--[[ 4.1. Text Analysis ]]
	Comment = { fg = comment_group.fg, style = "italic" },
	NonText = { fg = gray9 },
	EndOfBuffer = "NonText",
	Whitespace = "NonText",

	--[[ 4.1.1. Literals]]
	Constant = { fg = blue1 },
	String = { fg = green2, style = "italic" },
	Character = { fg = green2 },
	Number = { fg = orange1 },
	Boolean = { fg = orange0 },
	Float = "Number",

	--[[ 4.1.2. Identifiers]]
	Identifier = { fg = gray0 },
	Function = { fg = blue1, style = "bold" },

	--[[ 4.1.3. Syntax]]
	Statement = { fg = green1 },
	Conditional = { fg = orange1, style = "italic" },
	Repeat = { fg = red1, style = "italic" },
	Label = { fg = pink1, style = "bold" },
	Operator = "Identifier",
	Keyword = { fg = pink1 },
	Exception = { fg = red1, style = "bold" },
	Noise = "Delimiter",

	--[[ 4.1.4. metatextual information]]
	preproc = { fg = turquoise1 },
	include = { fg = pink1, style = { "nocombine", "italic" } },
	Define = { fg = blue1, style = { "nocombine", "italic" } },
	Macro = { fg = blue0, style = "italic" },
	PreCondit = "Conditional",

	--[[ 4.1.5. Semantics]]
	Type = "Number",
	StorageClass = { fg = orange1, style = "bold" },
	Structure = "StorageClass",
	Typedef = "Conditional",

	--[[ 4.1.6. Edge Cases]]
	Special = { fg = blue1, style = "bold" },
	SpecialChar = "Repeat",
	SpecialKey = "Character",
	Tag = "Underlined",
	Delimiter = { fg = gray7 },
	SpecialComment = { fg = gray0, style = { "bold", "nocombine" } },
	Debug = "WarningMsg",

	--[[ 4.1.7. Diffs]]
	DiffAdd = { fg = addfg, bg = addbg_light },
	DiffChange = { fg = changefg, bg = changebg_light },
	DiffDelete = { fg = delfg, bg = delbg_light },
	DiffText = { fg = gray3, bg = gray9 },

	--[[ 4.1.8. Help Syntax]]
	Underlined = { fg = turquoise1, style = { "underline", color = turquoise1 } },
	Ignore = "Identifier",
	Error = { fg = orange1, bg = orange_bg },
	Todo = "DiffDelete",
	Hint = { fg = red1, bg = red_bg },
	Info = { fg = blue1, bg = blue_bg },
	Warning = { fg = turquoise1, bg = turquoise_bg },

	--[[ 4.2... Editor UI  ]]

	--[[ 4.2.1. Status Line]]
	StatusLine = statusline_group,
	StatusLineNC = { bg = statusline_group.bg, fg = gray0 },
	StatusLineTerm = "StatusLine",
	StatusLineTermNC = "StatusLineNC",
	MsgArea = { fg = gray2 },
	WinBar = { bg = statusline_group.bg },

	--[[ 4.2.2. Separators]]
	VertSplit = { bg = highlight_group_normal.bg, fg = highlight_group_normal.bg },
	TabLine = tabline_group,
	TabLineFill = "VertSplit",
	TabLineSel = highlight_group_normal,
	Title = { style = "bold" },

	--[[ 4.2.3. Conditional Line Highlighting]]
	Conceal = { fg = red0 },
	CursorLine = { bg = highlight_group_normal.bg },
	CursorLineNr = { bg = NONE },
	CursorlineFold = "CursorLineNr",
	debugBreakpoint = "ErrorMsg",
	debugPC = "ColorColumn",
	LineNr = "Delimiter",
	QuickFixLine = { bg = gray7 },
	Visual = { bg = pmenu_group.bg },
	VisualNOS = "Visual",

	--[[ 4.2.4. Popup Menu]]
	Pmenu = pmenu_group,
	PmenuSbar = { fg = tabline_group.bg, bg = pmenu_group.bg },
	PmenuSel = { bg = tabline_group.bg, style = { "bold" } },
	PmenuThumb = { fg = comment_group.fg, bg = comment_group.fg },
	WildMenu = "PmenuSel",
	NormalFloat = pmenu_group,
	FloatBorder = { fg = pmenu_group.bg, bg = pmenu_group.bg },

	--[[ 4.2.5. Folds]]
	FoldColumn = { fg = gray7, style = "bold" },
	Folded = { bg = changebg_light },

	--[[ 4.2.7. Searching]]
	IncSearch = { style = { "inverse" } },
	MatchParen = "IncSearch",
	Search = { style = { "inverse", color = NONE } },
	CurSearch = { light = { bg = changebg_light } },

	--[[ 4.2.8. Spelling]]
	SpellBad = { style = { "undercurl", color = red0 } },
	SpellCap = { style = { "undercurl", color = magenta0 } },
	SpellRare = { style = { "undercurl", color = blue0 } },
	SpellLocal = { style = { "undercurl", color = orange0 } },

	--[[ 4.2.9. Conditional Column Highlighting]]
	ColorColumn = { bg = white0 },
	SignColumn = { bg = highlight_group_normal.bg },

	--[[ 4.2.10. Messages]]
	ErrorMsg = { fg = orange1 },
	HintMsg = { fg = red1 },
	InfoMsg = { fg = blue1 },
	WarningMsg = { fg = turquoise1 },
	ModeMsg = "WarningMsg",
	MoreMsg = { fg = gray8 },
	Question = { fg = turquoise1 },

	--[[ 4.2.11. LSP / Diagnostics ]]
	DiagnosticDeprecated = { strikethrough = true },
	DiagnosticError = "Error",
	DiagnosticFloatingError = "ErrorMsg",
	DiagnosticSignError = "DiagnosticFloatingError",
	DiagnosticVirtualTextError = "DiagnosticError",
	DiagnosticWarn = "Warning",
	DiagnosticFloatingWarn = "WarningMsg",
	DiagnosticSignWarn = "DiagnosticFloatingWarn",
	DiagnosticVirtualTextWarn = "DiagnosticWarn",
	DiagnosticHint = "Hint",
	DiagnosticFloatingHint = "HintMsg",
	DiagnosticSignHint = "DiagnosticFloatingHint",
	DiagnosticVirtualTextHint = "DiagnosticHint",
	DiagnosticInfo = "Info",
	DiagnosticFloatingInfo = "InfoMsg",
	DiagnosticSignInfo = "DiagnosticFloatingInfo",
	DiagnosticVirtualTextInfo = "DiagnosticInfo",
	DiagnosticOk = "DiffAdd",
	DiagnosticFloatingOk = { fg = green1 },
	DiagnosticSignOk = "DiagnosticFloatingOk",
	DiagnosticVirtualTextOk = "DiagnosticOk",
	DiagnosticUnderlineError = "SpellBad",
	DiagnosticUnderlineHint = "SpellCap",
	DiagnosticUnderlineInfo = "SpellRare",
	DiagnosticUnderlineWarn = "SpellLocal",
	DiagnosticUnderlineOk = { style = { "undercurl", color = green0 } },
	DiagnosticUnnecessary = function(self)
		return { style = { "underdotted", color = self.Ignore.fg } }
	end,

	LspDiagnosticsDefaultError = "DiagnosticError",
	LspDiagnosticsFloatingError = "DiagnosticFloatingError",
	LspDiagnosticsSignError = "DiagnosticSignError",

	LspDiagnosticsDefaultWarning = "DiagnosticWarn",
	LspDiagnosticsFloatingWarning = "DiagnosticFloatingWarn",
	LspDiagnosticsSignWarning = "DiagnosticSignWarn",

	LspDiagnosticsDefaultHint = "DiagnosticHint",
	LspDiagnosticsFloatingHint = "DiagnosticFloatingHint",
	LspDiagnosticsSignHint = "DiagnosticSignHint",

	LspDiagnosticsDefaultInformation = "DiagnosticInfo",
	LspDiagnosticsFloatingInformation = "DiagnosticFloatingInfo",
	LspDiagnosticsSignInformation = "DiagnosticSignInfo",

	LspDiagnosticsUnderlineError = "DiagnosticUnderlineError",
	LspDiagnosticsUnderlineHint = "DiagnosticUnderlineHint",
	LspDiagnosticsUnderlineInfo = "DiagnosticUnderlineInfo",
	LspDiagnosticsUnderlineWarning = "DiagnosticUnderlineWarn",

	["@lsp.mod.constant"] = "@constant",
	["@lsp.mod.readonly"] = "@lsp.mod.constant",
	["@lsp.type.boolean"] = "@boolean",
	["@lsp.type.character"] = "@character",
	["@lsp.type.float"] = "@float",
	["@lsp.type.interface"] = "@lsp.type.type",
	["@lsp.type.namespace"] = "@namespace",
	["@lsp.type.number"] = "@number",
	["@lsp.type.operator"] = "@operator",
	["@lsp.type.string"] = "@string",
	["@lsp.typemod.type.readonly"] = "@lsp.type.type",

	--[[ 4.2.12. Cursor ]]
	Cursor = "IncSearch",
	CursorIM = "Cursor",
	CursorColumn = { bg = gray1 },

	--[[ 4.2.13. Misc ]]
	Directory = { fg = blue0, style = "bold" },

	--[[ 4.3. Programming Languages ]]

	--[[ 4.3.1. C ]]
	cConstant = "Constant",
	cCustomClass = "Type",

	--[[ 4.3.2. C++ ]]
	cppSTLexception = "Exception",
	cppSTLnamespace = "String",

	--[[ 4.3.3 C# ]]
	csBraces = "Delimiter",
	csClass = "Structure",
	csClassType = "Type",
	csContextualStatement = "Conditional",
	csEndColon = "Delimiter",
	csGeneric = "Typedef",
	csInterpolation = "Include",
	csInterpolationDelimiter = "SpecialChar",
	csLogicSymbols = "Operator",
	csModifier = "Keyword",
	csNew = "Operator",
	csNewType = "Type",
	csParens = "Delimiter",
	csPreCondit = "PreProc",
	csQuote = "Delimiter",
	csRepeat = "Repeat",
	csStorage = "StorageClass",
	csUnspecifiedStatement = "Statement",
	csXmlTag = "Define",
	csXmlTagName = "Define",
	razorCode = "PreProc",
	razorcsLHSMemberAccessOperator = "Noise",
	razorcsRHSMemberAccessOperator = "razorcsLHSMemberAccessOperator",
	razorcsStringDelimiter = "razorhtmlValueDelimiter",
	razorcsTypeNullable = "Special",
	razorcsUnaryOperatorKeyword = "Operator",
	razorDelimiter = "Delimiter",
	razorEventAttribute = "PreCondit",
	razorFor = "razorIf",
	razorhtmlAttribute = "htmlArg",
	razorhtmlAttributeOperator = "Operator",
	razorhtmlTag = "htmlTag",
	razorhtmlValueDelimiter = "Delimiter",
	razorIf = "PreCondit",
	razorImplicitExpression = "PreProc",
	razorLine = "Constant",
	razorUsing = "Include",

	--[[ 4.3.4. CSS ]]
	cssAtRule = "PreCondit",
	cssAttr = "Keyword",
	cssAttrComma = "Noise",
	cssAttrRegion = "Keyword",
	cssBraces = "Delimiter",
	cssClassName = "Identifier",
	cssClassNameDot = "Noise",
	cssFlexibleBoxAttr = "cssAttr",
	cssFunctionComma = "Noise",
	cssImportant = "Exception",
	cssNoise = "Noise",
	cssProp = "Label",
	cssPseudoClass = "Special",
	cssPseudoClassId = "cssSelectorOp",
	cssSelectorOp = "Operator",
	cssTagName = "Structure",
	cssUnitDecorators = "Type",
	scssAmpersand = "Special",
	scssAttribute = "Noise",
	scssBoolean = "Boolean",
	scssDefault = "Keyword",
	scssElse = "scssIf",
	scssMixinName = function(self)
		local super = self.cssClassName
		return { bg = super.bg, fg = super.fg, style = "italic" }
	end,
	scssIf = "PreCondit",
	scssInclude = "Include",
	scssSelectorChar = "Delimiter",
	scssDefinition = "PreProc",
	scssSelectorName = "Identifier",
	scssVariable = "Define",
	scssVariableAssignment = "Operator",

	--[[ 4.3.5. Dart ]]
	dartLibrary = "Statement",

	--[[ 4.3.6. dot ]]
	dotKeyChar = "Character",
	dotType = "Type",

	--[[ 4.3.7. Go ]]
	goBlock = "Delimiter",
	goBoolean = "Boolean",
	goBuiltins = "Operator",
	goField = "Identifier",
	goFloat = "Float",
	goFormatSpecifier = "Character",
	goFunction = "Function",
	goFunctionCall = "goFunction",
	goFunctionReturn = NONE,
	goMethodCall = "goFunctionCall",
	goParamType = "goReceiverType",
	goPointerOperator = "SpecialChar",
	goPredefinedIdentifiers = "Constant",
	goReceiver = "goBlock",
	goReceiverType = "goTypeName",
	goSimpleParams = "goBlock",
	goType = "Type",
	goTypeConstructor = "goFunction",
	goTypeName = "Type",
	goVarAssign = "Identifier",
	goVarDefs = "goVarAssign",

	--[[ 4.3.8. HTML ]]
	htmlArg = "Label",
	htmlBold = { fg = highlight_group_normal.fg, style = "bold" },
	htmlTitle = "htmlBold",
	htmlEndTag = "htmlTag",
	htmlH1 = "markdownH1",
	htmlH2 = "markdownH2",
	htmlH3 = "markdownH3",
	htmlH4 = "markdownH4",
	htmlH5 = "markdownH5",
	htmlH6 = "markdownH6",
	htmlItalic = { style = "italic" },
	htmlSpecialTagName = "Keyword",
	htmlTag = "Special",
	htmlTagN = "Typedef",
	htmlTagName = "Type",

	--[[ 4.3.9. Java ]]
	javaClassDecl = "Structure",

	--[[ 4.3.10. JavaScript ]]
	jsFuncBlock = "Function",
	jsObjectKey = "Type",
	jsReturn = "Keyword",
	jsVariableDef = "Identifier",

	--[[ 4.3.11. JSON ]]
	jsonBraces = "luaBraces",
	jsonEscape = "SpecialChar",
	jsonKeywordMatch = "Operator",
	jsonNull = "Constant",
	jsonQuote = "Delimiter",
	jsonString = "String",
	jsonStringSQError = "Exception",

	--[[ 4.3.12. Lua ]]
	["@lsp.type.function.lua"] = {},
	["@lsp.type.keyword.lua"] = "SpecialComment",
	["@lsp.typemod.function.declaration.lua"] = "@lsp.type.function",
	["@lsp.typemod.function.global.lua"] = "@lsp.type.function",
	["@lsp.typemod.variable.defaultLibrary.lua"] = "@lsp.type.class.lua",
	["@lsp.typemod.variable.definition.lua"] = "@structure.lua",
	luaBraces = "Structure",
	luaBrackets = "Delimiter",
	luaBuiltin = "Keyword",
	luaComma = "Delimiter",
	luaDocTag = "SpecialComment",
	luaFuncArgName = "Identifier",
	luaFuncCall = "Function",
	luaFuncId = "luaNoise",
	luaFuncKeyword = "Type",
	luaFuncName = "Function",
	luaFuncParens = "Delimiter",
	luaFuncTable = "Identifier",
	luaFunction = "Keyword",
	luaGotoLabel = "luaLabel",
	luaIn = "luaRepeat",
	luaLocal = "Keyword",
	luaNoise = "Delimiter",
	luaParens = "Delimiter",
	luaSpecialTable = "Structure",
	luaSpecialValue = "Function",
	luaStatement = "Keyword",
	luaStringLongTag = function(self)
		local delimiter = self.Delimiter
		return { bg = delimiter.bg, fg = delimiter.fg, style = "italic" }
	end,

	--[[ 4.3.12. Make ]]
	makeCommands = "Statement",
	makeSpecTarget = "Type",

	--[[ 4.3.13. Markdown ]]
	markdownCode = "mkdCode",
	markdownStrike = { fg = gray1, style = { "strikethrough" } },
	markdownJekyllFrontMatter = { fg = gray1 },
	markdownJekyllDelimiter = { fg = gray1 },
	markdownCodeDelimiter = "mkdCodeDelimiter",
	markdownHeadingDelimiter = "NonText",
	markdownH1 = { fg = red1, bg = changebg_light, style = { "bold" } },
	markdownH2 = { fg = orange0, bg = delbg_light, style = { "bold" } },
	markdownH3 = { fg = green2, bg = addbg_light, style = { "bold" } },
	markdownH4 = { fg = gray9, bg = turquoise0, style = { "bold" } },
	markdownH5 = { fg = blue1, bg = pink0, style = { "bold" } },
	markdownH6 = { fg = green2, bg = addbg_light, style = { "bold" } },
	markdownLinkDelimiter = "Delimiter",
	markdownLinkTextDelimiter = "markdownLinkDelimiter",
	markdownUrl = "Underlined",
	mkdBold = "Ignore",
	mkdBoldItalic = "mkdBold",
	mkdCode = "Keyword",
	mkdCodeDelimiter = "mkdBold",
	mkdCodeEnd = "mkdCodeStart",
	mkdCodeStart = "mkdCodeDelimiter",
	mkdHeading = "Delimiter",
	mkdItalic = "mkdBold",
	mkdLineBreak = "NonText",
	mkdListItem = "Special",
	mkdRule = function(self)
		return { fg = self.Ignore.fg, style = { "underline", color = self.Delimiter.fg } }
	end,
	mkdURL = "htmlString",

	--[[ 4.3.20. Python ]]
	pythonBrackets = "Delimiter",
	pythonBuiltinFunc = "Operator",
	pythonBuiltinObj = "Type",
	pythonBuiltinType = "Type",
	pythonClass = "Structure",
	pythonClassParameters = "pythonParameters",
	pythonDecorator = "PreProc",
	pythonDottedName = "Identifier",
	pythonError = "Error",
	pythonException = "Exception",
	pythonInclude = "Include",
	pythonIndentError = "pythonError",
	pythonLambdaExpr = "pythonOperator",
	pythonOperator = "Operator",
	pythonParam = "Identifier",
	pythonParameters = "Delimiter",
	pythonSelf = "Statement",
	pythonSpaceError = "pythonError",
	pythonStatement = "Statement",

	--[[ 4.3.21. Ruby ]]
	rubyClass = "Structure",
	rubyDefine = "Define",
	rubyInterpolationDelimiter = "Delimiter",

	--[[ 4.3.23. Scala ]]
	scalaKeyword = "Keyword",
	scalaNameDefinition = "Identifier",

	--[[ 4.3.24. shell ]]
	shDerefSimple = "SpecialChar",
	shFunctionKey = "Function",
	shLoop = "Repeat",
	shParen = "Delimiter",
	shQuote = "Delimiter",
	shSet = "Statement",
	shTestOpr = "Debug",

	--[[ 4.3.25. Solidity ]]
	solBuiltinType = "Type",
	solContract = "Typedef",
	solContractName = "Function",

	--[[ 4.3.26. TOML ]]
	tomlComment = "Comment",
	tomlDate = "Special",
	tomlFloat = "Float",
	tomlKey = "Label",
	tomlTable = "Structure",

	--[[ 4.3.27. VimScript ]]
	vimCmdSep = "Delimiter",
	vimFunction = "Function",
	vimFgBgAttrib = "Constant",
	vimHiCterm = "Label",
	vimHiCtermFgBg = "vimHiCterm",
	vimHiGroup = "Typedef",
	vimHiGui = "vimHiCterm",
	vimHiGuiFgBg = "vimHiGui",
	vimHiKeyList = "Operator",
	vimIsCommand = "Identifier",
	vimOption = "Keyword",
	vimScriptDelim = "Ignore",
	vimSet = "String",
	vimSetEqual = "Operator",
	vimSetSep = "Delimiter",
	vimUserFunc = "vimFunction",

	--[[ 4.3.28. XML ]]
	xmlAttrib = "htmlArg",
	xmlEndTag = "xmlTag",
	xmlEqual = "Operator",
	xmlTag = "htmlTag",
	xmlTagName = "htmlTagName",

	--[[ 4.3.29. SQL ]]
	sqlKeyword = "Keyword",
	sqlParen = "Delimiter",
	sqlSpecial = "Constant",
	sqlStatement = "Statement",
	sqlParenFunc = "Function",

	--[[ 4.3.30. dos INI ]]
	dosiniHeader = "Title",
	dosiniLabel = "Label",

	--[[ 4.3.31. Crontab ]]
	crontabDay = "StorageClass",
	crontabDow = "String",
	crontabHr = "Number",
	crontabMin = "Float",
	crontabMnth = "Structure",

	--[[ 4.3.32. PlantUML ]]
	plantumlArrowLR = "Statement",
	plantumlColonLine = NONE,
	plantumlMindmap = "Label",
	plantumlMindmap2 = "Label",

	--[[ 4.3.33. YAML ]]
	yamlKey = "Label",

	--[[ 4.3.34. Git ]]
	diffAdded = "DiffAdd",
	diffRemoved = "DiffDelete",
	gitcommitHeader = "SpecialComment",
	gitcommitDiscardedFile = "gitcommitSelectedFile",
	gitcommitOverFlow = "Error",
	gitcommitSelectedFile = "Directory",
	gitcommitSummary = "Title",
	gitcommitUntrackedFile = "gitcommitSelectedFile",
	gitconfigAssignment = "String",
	gitconfigEscape = "SpecialChar",
	gitconfigNone = "Operator",
	gitconfigSection = "Structure",
	gitconfigVariable = "Label",
	gitrebaseBreak = "Keyword",
	gitrebaseCommit = "Tag",
	gitrebaseDrop = "Exception",
	gitrebaseEdit = "Define",
	gitrebaseExec = "PreProc",
	gitrebaseFixup = "gitrebaseSquash",
	gitrebaseMerge = "PreProc",
	gitrebasePick = "Include",
	gitrebaseReset = "gitrebaseLabel",
	gitrebaseReword = "gitrebasePick",
	gitrebaseSquash = "Macro",
	gitrebaseSummary = "Title",

	--[[ 4.3.35. Vimtex ]]
	texMathRegion = "Number",
	texMathSub = "Number",
	texMathSuper = "Number",
	texMathRegionX = "Number",
	texMathRegionXX = "Number",

	--[[ 4.3.37 Help ]]
	helpCommand = "Statement",
	helpHyperTextEntry = "Tag",
	helpExample = "Statement",
	helpNote = "DiagnosticHint",
	helpHeader = "Label",
	helpOption = "Keyword",
	helpHeadline = "Title",
	helpSectionDelim = "Delimiter",
	helpHyperTextJump = "Underlined",

	--[[ 4.3.38 Man ]]
	manBold = function(self)
		return vim.tbl_extend("force", self.mkdCode, { style = "nocombine" })
	end,
	manOptionDesc = "Special",
	manUnderline = "@text.literal",
	manReference = "@text.uri",
	manHeader = "markdownH1",
	manSectionHeading = "markdownH2",
	manSubHeading = "markdownH3",

	--[[ 4.4. Plugins ]]

	--[[ 4.3.39 Rust ]]
	["@lsp.mod.callable.rust"] = "@lsp.type.function",
	["@lsp.type.builtinType.rust"] = "@lsp.type.type",
	["@lsp.type.character.rust"] = {},
	["@lsp.type.decorator.rust"] = "@preproc",
	["@lsp.type.derive.rust"] = "@macro",
	["@lsp.type.enumMember.rust"] = {},
	["@lsp.type.macro.rust"] = {},
	["@lsp.type.operator.rust"] = {},
	["@lsp.type.selfKeyword.rust"] = "@keyword",
	["@lsp.type.selfTypeKeyword.rust"] = "@lsp.type.typeAlias.rust",
	["@lsp.type.string.rust"] = {},
	["@lsp.type.typeAlias.rust"] = "@type.definition",
	["@lsp.typemod.character.injected.rust"] = "@lsp.type.character",
	["@lsp.typemod.deriveHelper.attribute.rust"] = "@lsp.type.decorator.rust",
	["@lsp.typemod.keyword.injected.rust"] = "@keyword",
	["@lsp.typemod.macro.injected.rust"] = "@macro",
	["@lsp.typemod.operator.injected.rust"] = "@operator",
	["@lsp.typemod.string.injected.rust"] = "@lsp.type.string",
	rustAssert = "Debug",
	rustCharacterDelimiter = "rustNoise",
	rustIdentifier = "Identifier",
	rustStaticLifetime = "rustStorage",
	rustStringDelimiter = "rustNoise",

	--[[ 4.3.40 XXD ]]
	xxdAddress = "Label",
	xxdAscii = "Character",
	xxdDot = "Ignore",
	xxdSep = "Delimiter",

	--[[ 4.3.41 i3config ]]
	i3ConfigAction = "Function",
	i3ConfigAssignKeyword = "Keyword",
	i3ConfigAssign = "i3ConfigVariable",
	i3ConfigBind = "@text",
	i3ConfigBindKeyword = "Keyword",
	i3ConfigBlockKeyword = "Keyword",
	i3ConfigBorderStyle = "Keyword",
	i3ConfigBorderStyleKeyword = "Keyword",
	i3ConfigClientColorKeyword = "Keyword",
	i3ConfigCommandKeyword = "Keyword",
	i3ConfigDelayUrgencyKeyword = "Keyword",
	i3ConfigDrawingMarksKeyword = "Keyword",
	i3ConfigEdgeKeyword = "Keyword",
	i3ConfigExec = "Statement",
	i3ConfigExecKeyword = "Keyword",
	i3ConfigFloating = "Keyword",
	i3ConfigFocusFollowsMouseKeyword = "Keyword",
	i3ConfigFocusOnActivationKeyword = "Keyword",
	i3ConfigFocusWrappingKeyword = "Keyword",
	i3ConfigFontContent = "String",
	i3ConfigFontKeyword = "Keyword",
	i3ConfigFontSeparator = "Delimiter",
	i3ConfigFontSize = "i3ConfigNumber",
	i3ConfigForceXineramaKeyword = "Keyword",
	i3ConfigGapStyleKeyword = "Keyword",
	i3ConfigInitialize = "String",
	i3ConfigInitializeKeyword = "Keyword",
	i3ConfigInterprocessKeyword = "Keyword",
	i3ConfigLayoutKeyword = "Keyword",
	i3ConfigMouseWarpingKeyword = "Keyword",
	i3ConfigNoFocusKeyword = "Keyword",
	i3ConfigNoStartupId = "i3ConfigBindArgument",
	i3ConfigNumber = "Number",
	i3ConfigOrientationKeyword = "Keyword",
	i3ConfigPopupOnFullscreenKeyword = "Keyword",
	i3ConfigResourceKeyword = "Keyword",
	i3ConfigSmartBorderKeyword = "Keyword",
	i3ConfigSmartGapKeyword = "Keyword",
	i3ConfigString = "String",
	i3ConfigTitleAlignKeyword = "Keyword",
	i3ConfigVariable = "Define",
	i3ConfigVariableAndModifier = "Character",
	i3ConfigVariableModifier = "Operator",
	i3ConfigWindowCommandSpecial = "htmlTag",
	i3ConfigWorkspaceKeyword = "Keyword",

	--[[ 4.3.42 xDefaults ]]
	xdefaultsLabel = "Label",
	xdefaultsPunct = "Delimiter",
	xdefaultsValue = "String",

	--[[ 4.4. Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]

	--[[ 4.4.8. nvim-treesitter ]]
	["@structure"] = "Structure", -- BUG: missing from Nvim >=0.9
	["@boolean"] = "Boolean",
	["@text.note"] = "Info",
	["@text.warning"] = "Warning",
	["@text.danger"] = "Error",
	["@todo"] = "Todo",
	["@type"] = "Type",
	["@constant"] = "Constant",
	["@conditional"] = "Conditional",
	["@constant.builtin"] = "Conditional",
	["@constructor"] = "Typedef",
	["@function.builtin"] = { fg = turquoise1, style = "bold" },
	["@tag"] = "Tag",
	["@function"] = "Function",
	["@field"] = { fg = gray1 },
	["@exception"] = { fg = pink0, style = "italic" },
	["@text.reference"] = { fg = pink1 },
	["@text.strike"] = "markdownStrike",
	["@function.macro"] = "ErrorMsg",
	["@string.escape"] = "Character",
	["@string.regex"] = "SpecialChar",
	["@operator"] = "Operator",
	["@parameter"] = { fg = orange0 },
	["@property"] = "Question",
	["@punctuation.delimiter"] = "Identifier",
	["@punctuation.bracket"] = "Conceal",
	["@punctuation.special"] = { fg = gray5, style = "bold" },
	["@repeat"] = "Repeat",
	["@keyword"] = "Define",
	["@keyword.function"] = "Repeat",
	["@keyword.return"] = "Repeat",
	["@include"] = "Include",
	["@label"] = { fg = blue0 },
	["@namespace"] = "Directory",
	["@error"] = { fg = red0, style = { "undercurl", color = red0 } },
	["@text.uri"] = "Underlined",
	["@variable"] = "Identifier",
	["@variable.builtin"] = "Repeat",
	["@type.definition"] = "Define",
	["@text.title"] = { fg = red0, style = { "bold", "underline", color = red0 } },
	["@text.literal"] = "String",
	["@text.title.1"] = "markdownH1",
	OrgTSHeadlineLevel1 = "markdownH1",
	["@text.title.1.marker"] = "Delimiter",
	["@text.title.2"] = "markdownH2",
	OrgTSHeadlineLevel2 = "markdownH2",
	["@text.title.2.marker"] = "Delimiter",
	["@text.title.3"] = "markdownH3",
	OrgTSHeadlineLevel3 = "markdownH3",
	["@text.title.3.marker"] = "Delimiter",
	["@text.title.4"] = "markdownH4",
	OrgTSHeadlineLevel4 = "markdownH4",
	["@text.title.4.marker"] = "Delimiter",
	["@text.title.5"] = "markdownH5",
	OrgTSHeadlineLevel5 = "markdownH5",
	["@text.title.5.marker"] = "Delimiter",
	["@text.title.6"] = "markdownH6",
	OrgTSHeadlineLevel6 = "markdownH6",
	["@text.title.6.marker"] = "Delimiter",
	["@text.emphasis"] = { fg = gray0, style = "italic" },
	["@text.strong"] = { fg = gray0, style = "bold" },

	--[[ 4.4.9. barbar.nvim ]]
	BufferCurrent = { fg = gray0, bg = statusline_group.bg, style = "bold" },
	BufferCurrentMod = { fg = orange1, bg = statusline_group.bg, style = { "italic", "bold" } },
	BufferCurrentSign = { fg = white0, bg = statusline_group.bg },
	BufferCurrentERROR = { fg = red1, bg = statusline_group.bg },
	BufferCurrentTarget = { fg = red1, bg = statusline_group.bg, style = { "bold" } },

	BufferInactive = { fg = gray5, bg = tabline_group.bg },
	BufferInactiveMod = "BufferInactive",
	BufferInactiveSign = { fg = gray8, bg = tabline_group.bg },
	BufferInactiveTarget = { fg = red1, bg = tabline_group.bg, style = { "bold" } },

	BufferAlternate = "BufferInactive",
	BufferAlternateERROR = "BufferInactiveERROR",
	BufferAlternateMod = "BufferInactiveMod",
	BufferAlternateSign = "BufferInactiveSign",
	BufferAlternateTarget = "BufferInactiveTarget",

	BufferVisible = "BufferInactive",
	BufferVisibleMod = "BufferInactiveMod",
	BufferVisibleSign = "BufferInactiveSign",
	BufferVisibleTarget = "BufferInactiveTarget",

	BufferTabpages = "TabLine",
	BufferTabpageFill = "BufferTabpages",
	BufferTabpagesSep = "BufferTabpages",
	BufferSpaceSeparator = function(self)
		return { fg = self.BufferTabpages.bg, bg = self.BufferTabpages.bg }
	end,
	BufferTypeSeparator = "BufferSpaceSeparator",

	--[[ 4.4.14. trouble.nvim ]]
	TroubleNormal = { fg = highlight_group_normal.fg, bg = statusline_group.bg },
	TroubleCount = function(self)
		return vim.tbl_extend("force", self.Number, { style = "undercurl" })
	end,

	--[[ 4.4.16. nvim-compe and cmp ]]
	CmpDocumentationBorder = { fg = tabline_group.bg, bg = tabline_group.bg },
	CmpBorder = { fg = gray7, bg = highlight_group_normal.bg },
	CmpDocumentation = tabline_group,
	CmpItemAbbr = { fg = gray5 },
	CmpItemMenu = "Delimiter",
	CmpItemAbbrMatch = "Conceal",
	CmpItemAbbrDeprecated = { fg = gray1, style = { "strikethrough" } },
	CmpItemAbbrMatchFuzzy = { fg = blue0 },
	CmpItemKind = { bg = turquoise1, fg = pmenu_group.bg },
	CmpItemKindVariable = { bg = blue0, fg = pmenu_group.bg },
	CmpItemKindInterface = { bg = orange0, fg = pmenu_group.bg },
	CmpItemKindText = { bg = magenta0, fg = pmenu_group.bg },
	CmpItemKindFunction = { bg = pink1, fg = pmenu_group.bg },
	CmpItemKindProperty = { bg = green2, fg = pmenu_group.bg },
	CmpItemKindMethod = "CmpItemKindFunction",
	CmpItemKindKeyword = "CmpItemKindInterface",
	CmpItemKindUnit = "CmpItemKindFunction",
	CmpItemKindDefault = "Type",
	CmpItemKindClass = "CmpItemKindVariable",
	CmpItemKindColor = "CmpItemKindInterface",
	CmpItemKindConstant = "CmpItemKindText",
	CmpItemKindConstructor = "CmpItemKindFunction",
	CmpItemKindEnum = "CmpItemKindFunction",
	CmpItemKindEnumMember = "CmpItemKindInterface",
	CmpItemKindEvent = "CmpItemKindProperty",
	CmpItemKindField = "CmpItemKindFunction",
	CmpItemKindFile = "CmpItemKindVariable",
	CmpItemKindFolder = "CmpItemKindInterface",
	CmpItemKindModule = "CmpItemKindText",
	CmpItemKindOperator = "CmpItemKindFunction",
	CmpItemKindReference = "CmpItemKindFunction",
	CmpItemKindSnippet = "CmpItemKindInterface",
	CmpItemKindStruct = "CmpItemKindProperty",
	CmpItemKindTypeParameter = "CmpItemKindFunction",
	CmpItemKindValue = "CmpItemKindVariable",
	CmpItemAbbrDefault = "Ignore",
	CmpItemAbbrMatchDefault = "Underlined",
	CmpItemAbbrMatchFuzzyDefault = {
		fg = highlight_group_normal.fg,
		style = { "nocombine", "underline", color = gray9 },
	},
	CmpWindowScrollThumb = "Delimiter",

	--[[ 4.4.19. telescope ]]
	TelescopeSelection = { fg = highlight_group_normal.fg, bg = tabline_group.bg, style = { "bold" } },
	TelescopeSelectionCaret = { fg = highlight_group_normal.fg, bg = tabline_group.bg },
	TelescopeMultiSelection = { fg = highlight_group_normal.fg, style = { "bold" } },
	TelescopeNormal = { fg = gray0, bg = pmenu_group.bg },
	TelescopeBorder = { fg = pmenu_group.bg, bg = pmenu_group.bg },
	TelescopePromptNormal = tabline_group,
	TelescopePromptCounter = { fg = gray0, bg = tabline_group.bg },
	TelescopePromptBorder = { fg = gray8, bg = tabline_group.bg },
	TelescopeResultsBorder = { fg = gray9, bg = pmenu_group.bg },
	TelescopePreviewNormal = "WinBar",
	TelescopePreviewBorder = { fg = statusline_group.bg, bg = statusline_group.bg },
	TelescopeMatching = { style = { "bold" } },
	TelescopePromptPrefix = { fg = red0, style = { "bold" } },
	TelescopePromptTitle = { fg = pmenu_group.bg, bg = red1, style = { "bold" } },
	TelescopeResultsTitle = { fg = pmenu_group.bg, bg = green2, style = { "bold" } },
	TelescopePreviewTitle = { fg = statusline_group.bg, bg = blue0, style = { "bold" } },
	TelescopeTitle = { fg = pmenu_group.bg, bg = red0, style = { "bold" } },
	TelescopeResultsDiffUntracked = "TelescopePromptPrefix",

	-- [[ 4.4.20. floaterm ]]
	Floaterm = { fg = highlight_group_normal.fg, bg = pmenu_group.bg },

	--[[ 4.4.23. rainbow ]]
	TSRainbowRed = "Conceal",
	TSRainbowBlue = { fg = blue0 },
	TSRainbowCyan = { fg = turquoise0 },
	TSRainbowGreen = { fg = green0 },
	TSRainbowViolet = { fg = pink0 },
	TSRainbowYellow = { fg = orange0 },

	--[[ 4.4.24. galaxyline ]]
	GalaxyViMode = { fg = gray7, bg = pmenu_group.bg },
	GalaxyBg = { fg = highlight_group_normal.bg, bg = highlight_group_normal.bg },
	GalaxyFg = { fg = highlight_group_normal.fg, bg = statusline_group.bg },
	GalaxyFgAlt = { fg = pmenu_group.bg, bg = red1 },
	GalaxyFgAlt2 = { fg = comment_group.fg, bg = statusline_group.bg },
	GalaxyYellow = { fg = orange0, bg = statusline_group.bg },
	GalaxyCyan = { fg = turquoise0, bg = statusline_group.bg },
	GalaxyGreen = { fg = green1, bg = statusline_group.bg },
	GalaxyOrange = { fg = orange0, bg = statusline_group.bg },
	GalaxyMagenta = { fg = magenta0, bg = statusline_group.bg },
	GalaxyBlue = { fg = blue0, bg = statusline_group.bg },
	GalaxyRed = { fg = red0, bg = statusline_group.bg },

	--[[ 4.4.25 DAP UI]]
	DapBreakpoint = "Conceal",
	DapBreakpointCondition = "ErrorMsg",
	DapLogPoint = { fg = turquoise1 },
	DapStopped = { fg = green1 },
	DapUIVariable = "Normal",
	DapUIScope = { fg = blue0 },
	DapUIType = "DapUIScope",
	DapUIValue = "Normal",
	DapUIModifiedValue = { { fg = blue0 }, style = { "bold" } },
	DapUIDecoration = "DapUIScope",
	DapUIThread = { fg = green1 },
	DapUIStoppedThread = "DapUIScope",
	DapUIFrameName = "Normal",
	DapUISource = "Keyword",
	DapUILineNumber = "DapUIScope",
	DapUIFloatBorder = "DapUIScope",
	DapUIWatchesEmpty = { fg = magenta0 },
	DapUIWatchesValue = { fg = green2 },
	DapUIWatchesError = { fg = magenta1 },
	DapUIBreakpointsPath = "DapLogPoint",
	DapUIBreakpointsInfo = { fg = green0 },
	DapUIBreakpointsCurrentLine = { { fg = green1 }, style = { "bold" } },
	DapUIBreakpointsLine = "DapUILineNumber",
	DapBreakpointRejected = { fg = orange0 },
	NvimDapVirtualTextChanged = "Keyword",

	-- [[ 4.4.26 Barbecue]]
	barbecue_normal = "Winbar",
	barbecue_dirname = { fg = gray5, bg = statusline_group.bg },
	barbecue_context = "barbecue_dirname",
	barbecue_basename = "barbecue_dirname",
	barbecue_separator = "barbecue_dirname",
	barbecue_ellipsis = "barbecue_dirname",
	barbecue_context_file = function(self)
		return { bg = statusline_group.bg, fg = self.CmpItemKindVariable.fg }
	end,
	barbecue_context_module = function(self)
		return { bg = statusline_group.bg, fg = self.CmpItemKindInterface.fg }
	end,
	barbecue_context_method = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindFunction.fg }
	end,
	barbecue_context_constant = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindText.fg }
	end,
	barbecue_context_struct = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindProperty.fg }
	end,
	barbecue_context_namespace = "barbecue_context_module",
	barbecue_context_package = "barbecue_context_module",
	barbecue_context_interface = "barbecue_context_module",
	barbecue_context_enum_member = "barbecue_context_module",
	barbecue_context_class = "barbecue_context_file",
	barbecue_context_variable = "barbecue_context_file",
	barbecue_context_string = "barbecue_context_file",
	barbecue_context_number = "barbecue_context_file",
	barbecue_context_boolean = "barbecue_context_file",
	barbecue_context_array = "barbecue_context_file",
	barbecue_context_object = "barbecue_context_file",
	barbecue_context_key = "barbecue_context_constant",
	barbecue_context_null = "barbecue_context_file",
	barbecue_context_operator = "barbecue_context_method",
	barbecue_context_type_parameter = "barbecue_context_method",
	barbecue_context_property = "barbecue_context_method",
	barbecue_context_field = "barbecue_context_method",
	barbecue_context_constructor = "barbecue_context_method",
	barbecue_context_enum = "barbecue_context_method",
	barbecue_context_function = "barbecue_context_method",
	barbecue_context_event = "barbecue_context_struct",

	-- [[ 4.4.28 Noice]]
	NoiceCmdlineIcon = "TelescopePromptPrefix",
	NoiceVirtualText = "NonText",
	NoicePopup = "Pmenu",

	-- [[ 4.4.29 Notify]]
	NotifyINFOIcon = { fg = green0, bg = pmenu_group.bg },
	NotifyERRORIcon = { fg = red0, bg = pmenu_group.bg },
	NotifyWARNIcon = { fg = orange0, bg = pmenu_group.bg },
	NotifyTRACEIcon = { fg = magenta0, bg = pmenu_group.bg },

	NotifyINFOTitle = "NotifyINFOIcon",
	NotifyERRORTitle = "NotifyERRORTitle",
	NotifyWARNTitle = "NotifyWARNIcon",
	NotifyTRACETitle = "NotifyTRACEIcon",

	NotifyINFOBorder = { fg = pmenu_group.bg, bg = pmenu_group.bg },
	NotifyERRORBorder = "NotifyINFOBorder",
	NotifyWARNBorder = "NotifyINFOBorder",
	NotifyTRACEBorder = "NotifyINFOBorder",

	NotifyINFOBody = { fg = black0, bg = pmenu_group.bg },
	NotifyERRORBody = "NotifyINFOBody",
	NotifyTRACEBody = "NotifyINFOBody",
	NotifyWARNBody = "NotifyINFOBody",

	NotifyBackground = "Pmenu",

	-- [[ 4.4.30 Flash]]
	FlashBackdrop = { fg = comment_group.fg },
	FlashLabel = "DiffChange",

	-- [[ 4.4.31 Which-key]]
	WhichKeyFloat = "Pmenu",

	--[[ 4.4.32 Mini ]]
	MiniStarterHeader = { fg = comment_group.fg },
	MiniStarterCurrent = "ErrorMsg",
	MiniStarterFooter = "MiniStarterHeader",
	MiniStarterItem = "MiniStarterHeader",
	MiniStarterInactive = "NonText",
	MiniStarterSection = "MiniStarterFooter",
	MiniStarterItemBullet = "MiniStarterCurrent",
	MiniStarterItemPrefix = "MiniStarterCurrent",

	MiniMapNormal = { fg = pmenu_group.bg },
	MiniMapSymbolLine = "Comment",
	MiniMapSymbolView = "MiniMapNormal",

	MiniCursorword = "CurSearch",

	--[[ 4.4.33 headlines.nvim ]]
	-- CodeBlock = "WinBar",
	-- Headline = { bg = statusline_group.bg },
	-- Headline1 = "Headline",
	-- Headline2 = "Headline",
	-- Headline3 = "Headline",

	--[[ 4.4.34 SymbolsOutline ]]
	FocusedSymbol = { fg = highlight_group_normal.fg, bg = orange0 },
	OutlinePreviewBG = "Pmenu",
	SymbolsOutlineConnector = { fg = pmenu_group.bg },

	-- [[ 4.4.35 MarkSign ]]
	MarkSignHL = "Conceal",
	MarkSignNumHL = { fg = turquoise0 },

	-- [[ 4.5 Others ]]
	BiscuitColor = "NonText",
}

local terminal_colors = {
	[1] = gray9,
	[2] = red1,
	[3] = orange1,
	[4] = green2,
	[5] = blue1,
	[6] = pink1,
	[7] = magenta1,
	[8] = black0,
	[9] = gray8,
	[10] = red1,
	[11] = orange0,
	[12] = green0,
	[13] = blue0,
	[14] = magenta0,
	[15] = pink0,
	[16] = gray3,
}

require(vim.g.colors_name)(highlight_group_normal, highlight_groups, terminal_colors)

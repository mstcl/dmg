---@diagnostic disable: undefined-global
local lush = require("lush")
local spec = lush(function()
	return {
		Normal({ bg = "#e9e5e2", fg = "#161e29" }),

		StatusLine({ bg = "#ded8d3", fg = "#161e29" }),
		StatusLineNC({ bg = "#ded8d3", fg = "#574b42" }),
		StatusLineTermNC({ StatusLineNC }),
		StatusLineTerm({ StatusLine }),

		Folded({ bg = "#ded8d3", fg = "#9e8d7f" }),
		FoldColumn({ gui = "bold", fg = "#9e8d7f" }),

		VertSplit({ bg = "#e9e5e2", fg = "#ded8d3" }),
		WinSeparator({ VertSplit }),
		LineNr({ fg = "#bdb1a8" }),
		CursorLine({ bg = "#ded8d3" }),
		CursorLineNr({ fg = "#493f37" }),
		CursorLineFold({}),
		CursorLineSign({}),
		CursorColumn({ bg = "#493f37" }),
		SignColumn({}),
		ColorColumn({ bg = "#ded8d3" }),

		TabLine({ bg = "#bdb1a8", fg = "#746458" }),
		TabLineSel({ bg = "#ded8d3", fg = "#574b42" }),
		TabLineFill({ bg = "#bdb1a8" }),
		QuickFixLine({ bg = "#ded8d3" }),
		WinBar({ bg = "#ded8d3" }),
		WinBarNC({ WinBar }),

		Pmenu({ bg = "#c8beb7", fg = "#493f37" }),
		PmenuKind({ Pmenu }),
		PmenuExtra({ Pmenu }),
		PmenuSel({ fg = "#493f37", bg = "#bdb1a8", gui = "bold" }),
		PmenuKindSel({ PmenuSel }),
		PmenuExtraSel({ PmenuSel }),
		PmenuSbar({ bg = "#c8beb7", fg = "#bdb1a8" }),
		PmenuThumb({ bg = "#837163", fg = "#837163" }),
		WildMenu({ PmenuSel }),

		lCursor({ bg = "fg", fg = "bg" }),

		HintMsg({ fg = "#630e49" }),
		ErrorMsg({ fg = "#74351e" }),
		MoreMsg({ fg = "#837163" }),
		WarningMsg({ fg = "#573e1a" }),
		ModeMsg({ WarningMsg }),
		InfoMsg({ fg = "#26126d" }),
		MsgSeparator({ StatusLine }),
		MsgArea({ StatusLine }),

		DiffAdd({ bg = "#dae5cd", fg = "#637337" }),
		DiffText({ bg = "#c8beb7", fg = "#2c2621" }),
		DiffChange({ bg = "#e1d2d6", fg = "#705357" }),
		DiffDelete({ bg = "#ecd5d3", fg = "#834c40" }),
		DiffFGAdd({ fg = "#637337" }),
		DiffFGText({ fg = "#2c2621" }),
		DiffFGChange({ fg = "#705357" }),
		DiffFGDelete({ fg = "#834c40" }),
		diffAdded({ DiffAdd }),
		diffRemoved({ DiffDelete }),
		Added({ DiffAdd }),
		Removed({ DiffDelete }),
		Changed({ DiffChange }),

		Directory({ gui = "bold", fg = "#483d8b" }),
		NonText({ fg = "#c8beb7" }),
		EndOfBuffer({ NonText }),
		Whitespace({ NonText }),
		Underlined({ gui = "underline", sp = "#573e1a", fg = "#573e1a" }),
		Tag({ Underlined }),
		Comment({ gui = "italic", fg = "#837163" }),
		Delimiter({ fg = "#9e8d7f" }),
		Conceal({ Delimiter }),

		Warning({ bg = "#d6c890", fg = "#573e1a" }),
		Info({ bg = "#d1ccde", fg = "#26126d" }),
		Hint({ bg = "#dbc4c8", fg = "#630e49" }),
		Error({ bg = "#dcb892", fg = "#74351e" }),
		Question({ fg = "#573e1a" }),

		Title({ gui = "bold" }),
		Debug({ WarningMsg }),
		Todo({ DiffDelete }),

		SpellCap({ gui = "undercurl", sp = "#72347c" }),
		SpellRare({ gui = "undercurl", sp = "#483d8b" }),
		SpellLocal({ gui = "undercurl", sp = "#813b21" }),
		SpellBad({ gui = "undercurl", sp = "#752c5f" }),

		String({ gui = "italic", fg = "#184e1e" }),
		Constant({ fg = "#26126d" }),
		Character({ fg = "#184e1e" }),
		SpecialKey({ Character }),
		Number({ fg = "#74351e" }),
		Function({ gui = "bold", fg = "#26126d" }),
		Float({ Number }),
		Type({ Number }),
		Identifier({ fg = "#574b42" }),
		Operator({ Identifier }),
		Ignore({ Identifier }),
		Statement({ fg = "#74351e" }),
		Conditional({ gui = "italic", fg = "#74351e" }),
		Keyword({ fg = "#630e49" }),
		Repeat({ gui = "italic", fg = "#630e49" }),
		Define({ gui = "italic", fg = "#26126d" }),
		Label({ gui = "bold", fg = "#793454" }),
		Exception({ gui = "bold", fg = "#630e49" }),
		Include({ gui = "italic", fg = "#793454" }),
		PreProc({ fg = "#573e1a" }),
		Special({ gui = "bold", fg = "#26126d" }),
		Macro({ gui = "italic", fg = "#483d8b" }),
		StorageClass({ gui = "bold", fg = "#74351e" }),
		SpecialComment({ gui = "bold", fg = "#574b42" }),
		SpecialChar({ Repeat }),
		Structure({ StorageClass }),
		Boolean({ fg = "#813b21" }),
		PreCondit({ Conditional }),
		Typedef({ Conditional }),
		Noise({ Delimiter }),

		NormalFloat({ bg = "#c8beb7", fg = "#493f37" }),
		FloatBorder({ bg = "#c8beb7", fg = "#c8beb7" }),
		FloatTitle({ bg = "#c8beb7", fg = "#493f37", gui = "bold" }),
		FloatFooter({ bg = "#c8beb7", fg = "#493f37", gui = "bold" }),
		FloatShadow({ bg = "black", blend = 80 }),
		FloatShadowThrough({ bg = "black", blend = 100 }),

		IncSearch({ gui = "reverse" }),
		Cursor({ IncSearch }),
		MatchParen({ IncSearch }),
		Search({ gui = "reverse" }),
		Substitute({ Search }),
		CurSearch({ bg = "#d1ccde" }),

		TermCursor({ gui = "reverse" }),

		Visual({ bg = "#c8beb7" }),
		VisualNOS({ Visual }),

		debugPC({ ColorColumn }),
		debugBreakpoint({ ErrorMsg }),
		RedrawDebugNormal({ gui = "reverse" }),
		RedrawDebugClear({ bg = "yellow" }),
		RedrawDebugComposed({ bg = "green" }),
		RedrawDebugRecompose({ bg = "red" }),
	}
end)

return spec

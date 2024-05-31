---@diagnostic disable: undefined-global
local lush = require("lush")
local base = require("dmg_base")
local spec = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- TREESITTER
		sym("@constant")({ base.Constant }),
		sym("@constant.builtin")({ base.Conditional }),
		sym("@constant.macro")({ base.Define }),

		sym("@keyword")({ base.Define }),
		sym("@keyword.repeat")({ base.Repeat }),
		sym("@keyword.exception")({ gui = "italic", fg = "#8e3d63" }),
		sym("@keyword.conditional")({ base.Conditional }),
		sym("@keyword.storage")({ base.StorageClass }),
		sym("@keyword.return")({ base.Repeat }),
		sym("@keyword.function")({ base.Repeat }),
		sym("@keyword.directive")({ base.PreProc }),
		sym("@keyword.import")({ base.Include }),

		sym("@org.headline.level6")({ gui = "bold", fg = "#573e1a" }),
		sym("@org.headline.level5")({ gui = "bold", fg = "#74351e" }),
		sym("@org.headline.level4")({ gui = "bold", fg = "#184e1e" }),
		sym("@org.headline.level3")({ gui = "bold", fg = "#793454" }),
		sym("@org.headline.level2")({ gui = "bold", fg = "#26126d" }),
		sym("@org.headline.level1")({ gui = "bold", fg = "#161e29" }),
		sym("@org.keyword.done")({ bg = "#d0d8cc", fg = "#184e1e" }),
		sym("@org.keyword.todo")({ bg = "#dbc4c8", fg = "#630e49" }),
		sym("@org.agenda.scheduled")({ base.Directory }),
		sym("@org.agenda.deadline")({ base.Conceal }),


		sym("@punctuation.special")({ gui = "bold", fg = "#746458" }),
		sym("@punctuation")({ base.Delimiter }),
		sym("@punctuation.delimiter")({ base.Identifier }),
		sym("@punctuation.bracket")({ base.Conceal }),

		sym("@function")({ base.Function }),
		sym("@function.macro")({ base.ErrorMsg }),
		sym("@function.builtin")({ gui = "bold", fg = "#26126d" }),
		sym("@function.method")({ base.Function }),

		sym("@comment")({ base.Comment }),
		sym("@comment.todo")({ bg = "#dbc4c8", fg = "#630e49" }),
		sym("@comment.error")({ base.Error }),
		sym("@comment.warning")({ base.Warning }),
		sym("@comment.hint")({ base.Hint }),
		sym("@comment.note")({ base.Info }),
		sym("@comment.ok")({ base.Info }),

		sym("@variable")({ base.Identifier }),
		sym("@variable.builtin")({ base.Repeat }),
		sym("@variable.parameter")({ fg = "#813b21" }),
		sym("@variable.member")({ fg = "#493f37" }),

		sym("@markup.underline")({ base.Underlined }),
		sym("@markup.reference")({ fg = "#793454" }),
		sym("@markup.raw")({ bg = "#ded8d3", fg = "#493f37" }),
		sym("@markup.raw.block")({}),
		sym("@markup.strong")({ gui = "bold" }),
		sym("@markup.quote")({ gui = "italic", fg = "#574b42" }),
		sym("@markup.italic")({ gui = "italic" }),
		sym("@markup.link.label")({ fg = "#26126d" }),
		sym("@markup.heading")({ gui = "bold,underline", sp = "#752c5f", fg = "#752c5f" }),
		sym("@markup.heading.6.marker")({ base.Delimiter }),
		sym("@markup.heading.5.marker")({ base.Delimiter }),
		sym("@markup.heading.4.marker")({ base.Delimiter }),
		sym("@markup.heading.3.marker")({ base.Delimiter }),
		sym("@markup.heading.2.marker")({ base.Delimiter }),
		sym("@markup.heading.1.marker")({ base.Delimiter }),
		sym("@markup.heading.6")({ bg = "#d1bed0", gui = "bold", fg = "#5e2b66" }),
		sym("@markup.heading.5")({ bg = "#d1ccde", gui = "bold", fg = "#26126d" }),
		sym("@markup.heading.4")({ bg = "#deb9b9", gui = "bold", fg = "#793454" }),
		sym("@markup.heading.3")({ bg = "#d6c890", gui = "bold", fg = "#573e1a" }),
		sym("@markup.heading.2")({ bg = "#d1ccde", gui = "bold", fg = "#26126d" }),
		sym("@markup.heading.1")({ bg = "#dbc4c8", gui = "bold", fg = "#630e49" }),
		sym("@markup.link.url")({ gui = "underline", fg = "#184e1e" }),
		sym("@markup.strikethrough")({ gui = "strikethrough", fg = "#493f37" }),
		sym("@markup.math")({ base.Number }),

		sym("@string")({ base.String }),
		sym("@string.escape")({ base.Character }),
		sym("@string.special.symbol")({ base.Special }),
		sym("@string.special.url")({ gui = "underline", fg = "#184e1e" }),
		sym("@string.special.uri")({ base.Underlined }),

		sym("@number")({ base.Number }),
		sym("@number.float")({ base.Float }),

		sym("@label")({ fg = "#483d8b" }),
		sym("@module")({ base.Directory }),
		sym("@property")({ base.Question }),
		sym("@error")({ gui = "undercurl", sp = "#752c5f", fg = "#752c5f" }),
		sym("@boolean")({ base.Boolean }),
		sym("@character")({ base.Character }),
		sym("@define")({ base.Define }),
		sym("@type.definition")({ base.Define }),
		sym("@macro")({ base.Macro }),
		TSPlaygroundFocus({}),
		TSPlaygroundLang({}),
		TSQueryLinterError({}),

		sym("@string.yaml")({ fg = "#184e1e" }),
		sym("@punctuation.delimiter.yaml")({ base.Delimiter })
	}
end)
return spec

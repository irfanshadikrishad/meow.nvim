local M = {}

local function hl(group, attributes)
	vim.api.nvim_set_hl(0, group, attributes)
end

function M.setup(colors, config)
	-- Functions
	hl("@function", { fg = colors.function_name })
	hl("@function.builtin", { fg = colors.function_name })
	hl("@function.call", { fg = colors.function_name })
	hl("@function.macro", { fg = colors.keyword })
	hl("@function.method", { fg = colors.function_name })
	hl("@function.method.call", { fg = colors.function_name })
	hl("@constructor", { fg = colors.function_name })

	-- Keywords
	local keyword_style = { fg = colors.keyword }
	if config.bold_keywords then
		keyword_style.bold = true
	end
	hl("@keyword", keyword_style)
	hl("@keyword.conditional", keyword_style)
	hl("@keyword.repeat", keyword_style)
	hl("@keyword.return", keyword_style)
	hl("@keyword.function", keyword_style)
	hl("@keyword.operator", { fg = colors.operator })
	hl("@keyword.import", keyword_style)
	hl("@keyword.storage", keyword_style)

	-- Types
	hl("@type", { fg = colors.type })
	hl("@type.builtin", { fg = colors.type })
	hl("@type.qualifier", { fg = colors.keyword })
	hl("@type.definition", { fg = colors.function_name })

	-- Variables
	hl("@variable", { fg = colors.type })
	hl("@variable.builtin", { fg = colors.type })
	hl("@variable.parameter", { fg = colors.variable })
	hl("@variable.member", { fg = colors.property })

	-- Literals
	hl("@string", { fg = colors.string })
	hl("@string.regexp", { fg = colors.string })
	hl("@string.escape", { fg = colors.property })
	hl("@string.special", { fg = colors.property })
	hl("@number", { fg = colors.number })
	hl("@number.float", { fg = colors.number })
	hl("@boolean", { fg = colors.boolean })
	hl("@constant", { fg = colors.constant })
	hl("@constant.builtin", { fg = colors.constant })
	hl("@constant.macro", { fg = colors.keyword })

	-- Comments
	local comment_style = { fg = colors.comment }
	if config.italic_comments then
		comment_style.italic = true
	end
	hl("@comment", comment_style)
	hl("@comment.note", { fg = colors.info })
	hl("@comment.warning", { fg = colors.warning })
	hl("@comment.error", { fg = colors.error })
	hl("@comment.todo", { fg = colors.keyword })

	-- Punctuation & Operators
	hl("@operator", { fg = colors.operator })
	hl("@punctuation", { fg = colors.operator })
	hl("@punctuation.bracket", { fg = colors.operator })
	hl("@punctuation.delimiter", { fg = colors.operator })
	hl("@punctuation.special", { fg = colors.keyword })

	-- Other
	hl("@property", { fg = colors.function_call })
	hl("@label", { fg = colors.keyword })
	hl("@tag", { fg = colors.keyword })
	hl("@tag.attribute", { fg = colors.function_name })
	hl("@tag.delimiter", { fg = colors.operator })
	hl("@module", { fg = colors.type })
	hl("@preproc", { fg = colors.keyword })
	hl("@debug", { fg = colors.error })
	hl("@exception", { fg = colors.error })

	-- Markdown specific
	hl("@markup.heading", { fg = colors.keyword, bold = true })
	hl("@markup.link", { fg = colors.info, underline = true })
	hl("@markup.link.label", { fg = colors.function_name })
	hl("@markup.list", { fg = colors.operator })
	hl("@markup.quote", { fg = colors.comment, italic = true })
	hl("@markup.raw", { fg = colors.string })
	hl("@markup.strong", { bold = true })
	hl("@markup.italic", { italic = true })
	hl("@markup.strikethrough", { strikethrough = true })
end

return M

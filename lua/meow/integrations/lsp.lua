-- LSP and Diagnostics highlight groups

local M = {}

local function hl(group, attributes)
	vim.api.nvim_set_hl(0, group, attributes)
end

function M.setup(colors, _)
	-- Diagnostic signs
	hl("DiagnosticError", { fg = colors.error })
	hl("DiagnosticWarn", { fg = colors.warning })
	hl("DiagnosticInfo", { fg = colors.info })
	hl("DiagnosticHint", { fg = colors.hint })
	hl("DiagnosticOk", { fg = colors.git_add })

	-- Diagnostic underlines
	hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.error })
	hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning })
	hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
	hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.hint })

	-- Diagnostic virtual text
	hl("DiagnosticVirtualTextError", { fg = colors.error })
	hl("DiagnosticVirtualTextWarn", { fg = colors.warning })
	hl("DiagnosticVirtualTextInfo", { fg = colors.info })
	hl("DiagnosticVirtualTextHint", { fg = colors.hint })

	-- Diagnostic floating
	hl("DiagnosticFloatingError", { fg = colors.error })
	hl("DiagnosticFloatingWarn", { fg = colors.warning })
	hl("DiagnosticFloatingInfo", { fg = colors.info })
	hl("DiagnosticFloatingHint", { fg = colors.hint })

	-- LSP Reference/Implementation
	hl("LspReferenceText", { bg = colors.selection })
	hl("LspReferenceRead", { bg = colors.selection })
	hl("LspReferenceWrite", { bg = colors.selection })

	-- LSP Symbol highlights
	hl("@lsp.type.class",          { link = "@type" })
	hl("@lsp.type.struct",         { link = "@type" })
	hl("@lsp.type.enum",           { link = "@type" })
	hl("@lsp.type.enumMember",     { link = "@constant" })
	hl("@lsp.type.interface",      { link = "@type" })
	hl("@lsp.type.builtinType",    { link = "@type.builtin" })
	hl("@lsp.type.type",           { link = "@type" })
	hl("@lsp.type.typeParameter",  { link = "@variable.parameter" })
	hl("@lsp.type.function",       { link = "@function" })
	hl("@lsp.type.method",         { link = "@function.method" })
	hl("@lsp.type.namespace",      { link = "@module" })
	hl("@lsp.type.parameter",      { link = "@variable.parameter" })
	hl("@lsp.type.property",       { link = "@property" })
	hl("@lsp.type.variable",       { link = "@variable" })
	hl("@lsp.type.keyword",        { link = "@keyword" })
	hl("@lsp.type.comment",        { link = "@comment" })
	hl("@lsp.type.string",         { link = "@string" })
	hl("@lsp.type.number",         { link = "@number" })
	hl("@lsp.type.boolean",        { link = "@boolean" })
	hl("@lsp.type.operator",       { link = "@operator" })
	hl("@lsp.type.selfKeyword",    { link = "@variable.builtin" })
	hl("@lsp.type.decorator",      { fg = colors.property })
	hl("@lsp.type.lifetime",       { fg = colors.keyword, italic = true })

	-- LSP Semantic token modifiers
	hl("@lsp.mod.documentation", { italic = true })
	hl("@lsp.mod.readonly",      { fg = colors.constant })
	hl("@lsp.mod.static",        { fg = colors.constant })
	hl("@lsp.mod.deprecated",    { strikethrough = true })
	hl("@lsp.mod.async",         { italic = true })
	hl("@lsp.mod.mutable",       { underline = true, sp = colors.variable })
end

return M

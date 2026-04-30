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
	hl("@lsp.type.class", { link = "@type" })
	hl("@lsp.type.enum", { link = "@type" })
	hl("@lsp.type.function", { link = "@function" })
	hl("@lsp.type.interface", { link = "@type" })
	hl("@lsp.type.method", { link = "@function.method" })
	hl("@lsp.type.namespace", { link = "@module" })
	hl("@lsp.type.parameter", { link = "@variable.parameter" })
	hl("@lsp.type.property", { link = "@property" })
	hl("@lsp.type.variable", { link = "@variable" })

	-- LSP Semantic tokens (if using semantic highlighting)
	hl("@lsp.mod.documentation", { italic = true })
	hl("@lsp.mod.readonly", { fg = colors.constant })
	hl("@lsp.mod.static", { fg = colors.constant })
	hl("@lsp.mod.deprecated", { strikethrough = true })
end

return M

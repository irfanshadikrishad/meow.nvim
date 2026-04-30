local M = {}

local function hl(group, attributes)
	vim.api.nvim_set_hl(0, group, attributes)
end

function M.apply(colors, config)
	-- ==========================================================================
	-- EDITOR BASE
	-- ==========================================================================
	hl("Normal", { fg = colors.fg, bg = colors.bg })
	hl("NormalNC", { fg = colors.fg, bg = colors.bg })
	hl("EndOfBuffer", { fg = colors.bg, bg = colors.bg })
	hl("Cursor", { fg = colors.bg, bg = colors.cursor })
	hl("CursorLine", { bg = colors.cursor_line })
	hl("CursorLineNr", { fg = colors.line_nr_active, bg = colors.cursor_line })
	hl("CursorColumn", { bg = colors.cursor_line })
	hl("LineNr", { fg = colors.line_nr })
	hl("LineNrAbove", { fg = colors.line_nr })
	hl("LineNrBelow", { fg = colors.line_nr })
	hl("ColorColumn", { bg = colors.cursor_line })
	hl("Conceal", { fg = colors.comment })
	hl("Directory", { fg = colors.function_name })

	-- Selection
	hl("Visual", { bg = colors.selection })
	hl("VisualNOS", { bg = colors.selection })
	hl("Selection", { bg = colors.selection })

	-- Search
	hl("Search", { bg = colors.search_match })
	hl("IncSearch", { bg = colors.search_current, fg = colors.fg })
	hl("CurSearch", { bg = colors.popup_highlight, fg = colors.bg })
	hl("Substitute", { bg = colors.error, fg = colors.bg })

	-- Spelling
	hl("SpellBad", { undercurl = true, sp = colors.error })
	hl("SpellCap", { undercurl = true, sp = colors.warning })
	hl("SpellLocal", { undercurl = true, sp = colors.info })
	hl("SpellRare", { undercurl = true, sp = colors.hint })

	-- ==========================================================================
	-- SYNTAX (Legacy Groups)
	-- ==========================================================================
	local comment_style = { fg = colors.comment }
	if config.italic_comments then
		comment_style.italic = true
	end
	hl("Comment", comment_style)

	local keyword_style = { fg = colors.keyword }
	if config.bold_keywords then
		keyword_style.bold = true
	end
	hl("Keyword", keyword_style)
	hl("Statement", keyword_style)
	hl("Conditional", keyword_style)
	hl("Repeat", keyword_style)
	hl("Label", keyword_style)
	hl("Exception", keyword_style)
	hl("Include", keyword_style)
	hl("Define", keyword_style)
	hl("Macro", keyword_style)
	hl("PreProc", keyword_style)
	hl("PreCondit", keyword_style)

	hl("Function", { fg = colors.function_name })
	hl("Identifier", { fg = colors.type })

	hl("String", { fg = colors.string })
	hl("Character", { fg = colors.string })

	hl("Number", { fg = colors.number })
	hl("Float", { fg = colors.number })
	hl("Boolean", { fg = colors.boolean })

	hl("Type", { fg = colors.type })
	hl("StorageClass", { fg = colors.type })
	hl("Structure", { fg = colors.type })
	hl("Typedef", { fg = colors.type })

	hl("Constant", { fg = colors.constant })
	hl("Operator", { fg = colors.operator })

	hl("Special", { fg = colors.property })
	hl("SpecialChar", { fg = colors.property })
	hl("SpecialComment", { fg = colors.comment })
	hl("Tag", { fg = colors.keyword })
	hl("Delimiter", { fg = colors.operator })

	hl("Underlined", { underline = true })
	hl("Ignore", { fg = colors.bg })
	hl("Todo", { fg = colors.keyword, bg = colors.bg, bold = true })
	hl("Error", { fg = colors.error })
	hl("ErrorMsg", { fg = colors.error })
	hl("WarningMsg", { fg = colors.warning })
	hl("ModeMsg", { fg = colors.info })
	hl("MoreMsg", { fg = colors.info })

	-- ==========================================================================
	-- UI COMPONENTS
	-- ==========================================================================
	-- Popup menus
	hl("Pmenu",         { bg = colors.popup_bg,        fg = colors.fg })
	hl("PmenuSel",      { bg = colors.popup_highlight, fg = colors.popup_highlight_fg })
	hl("PmenuSbar",     { bg = colors.cursor_line })
	hl("PmenuThumb",    { bg = colors.popup_highlight })
	-- Extended pmenu (Neovim 0.9+)
	hl("PmenuKind",     { bg = colors.popup_bg,        fg = colors.type })
	hl("PmenuKindSel",  { bg = colors.popup_highlight, fg = colors.type })
	hl("PmenuExtra",    { bg = colors.popup_bg,        fg = colors.comment })
	hl("PmenuExtraSel", { bg = colors.popup_highlight, fg = colors.comment })

	-- Floating windows
	hl("FloatBorder",         { fg = colors.popup_border, bg = colors.popup_bg })
	hl("FloatTitle",          { fg = colors.keyword, bold = true })
	hl("FloatFooter",         { fg = colors.comment, bg = colors.popup_bg })
	hl("NormalFloat",         { fg = colors.fg,      bg = colors.popup_bg })
	hl("FloatShadow",         { bg = colors.bg, blend = 50 })
	hl("FloatShadowThrough",  { bg = colors.bg, blend = 100 })

	-- Statusline
	hl("StatusLine", { fg = colors.fg, bg = colors.bg })
	hl("StatusLineNC", { fg = colors.line_nr, bg = colors.bg })
	hl("StatusLineTerm", { fg = colors.fg, bg = colors.bg })
	hl("StatusLineTermNC", { fg = colors.line_nr, bg = colors.bg })

	-- Tab line
	hl("TabLine", { fg = colors.line_nr, bg = colors.bg })
	hl("TabLineSel", { fg = colors.fg, bg = colors.popup_bg })
	hl("TabLineFill", { bg = colors.bg })

	-- Splits & separators
	hl("VertSplit",    { fg = colors.popup_border, bg = colors.bg })
	hl("WinSeparator", { fg = colors.popup_border, bg = colors.bg })

	-- Fold
	hl("Folded", { fg = colors.comment, bg = colors.cursor_line })
	hl("FoldColumn", { fg = colors.line_nr })

	-- Sign column
	hl("SignColumn", { bg = colors.bg })

	-- Quickfix
	hl("QuickFixLine", { bg = colors.selection })

	-- Match bracket
	hl("MatchParen", { bg = colors.bracket_match_bg })
	hl("MatchParenCur", { bg = colors.bracket_match_bg })

	-- Whitespace
	hl("Whitespace", { fg = colors.whitespace })
	hl("NonText", { fg = colors.whitespace })
	hl("SpecialKey", { fg = colors.whitespace })

	-- Cursor IME
	hl("CursorIM", { bg = colors.cursor_ime, fg = colors.bg })

	-- Terminal
	hl("Terminal", { fg = colors.fg, bg = colors.bg })

	-- LSP inlay hints
	hl("LspInlayHint",      { fg = colors.comment, bg = colors.cursor_line, italic = true })

	-- LSP codelens
	hl("LspCodeLens",       { fg = colors.comment, italic = true })
	hl("LspCodeLensSeparator", { fg = colors.line_nr })

	-- Additional diagnostics (Neovim 0.10+)
	hl("DiagnosticDeprecated",  { strikethrough = true, sp = colors.error })
	hl("DiagnosticUnnecessary", { fg = colors.comment })

	-- Debug
	hl("debugBreakpoint", { fg = colors.error })
	hl("debugPC", { bg = colors.selection })

	-- Window bar (breadcrumbs / winbar plugins)
	hl("WinBar",   { fg = colors.fg,      bg = colors.bg })
	hl("WinBarNC", { fg = colors.line_nr, bg = colors.bg })

	-- Sidebar / panel normal (used by nvim-tree, aerial, etc.)
	hl("NormalSB", { fg = colors.fg, bg = colors.bg })

	-- ==========================================================================
	-- MESSAGES & PROMPTS
	-- ==========================================================================
	hl("Title", { fg = colors.keyword, bold = true })
	hl("WildMenu", { bg = colors.popup_highlight, fg = colors.bg })
	hl("Question", { fg = colors.info })
	hl("MsgArea", { fg = colors.fg })
	hl("MsgSeparator", { fg = colors.line_nr })

	-- ==========================================================================
	-- TERMINAL COLORS
	-- Sets the 16-color palette used by :terminal buffers.
	-- ==========================================================================
	vim.g.terminal_color_0  = colors.bg             -- black
	vim.g.terminal_color_1  = colors.error          -- red
	vim.g.terminal_color_2  = colors.git_add        -- green
	vim.g.terminal_color_3  = colors.constant       -- yellow
	vim.g.terminal_color_4  = colors.function_name  -- blue
	vim.g.terminal_color_5  = colors.keyword        -- magenta
	vim.g.terminal_color_6  = colors.type           -- cyan
	vim.g.terminal_color_7  = colors.fg             -- white
	vim.g.terminal_color_8  = colors.comment        -- bright black
	vim.g.terminal_color_9  = colors.error          -- bright red
	vim.g.terminal_color_10 = colors.string         -- bright green
	vim.g.terminal_color_11 = colors.warning        -- bright yellow
	vim.g.terminal_color_12 = colors.function_name  -- bright blue
	vim.g.terminal_color_13 = colors.property       -- bright magenta
	vim.g.terminal_color_14 = colors.info           -- bright cyan
	vim.g.terminal_color_15 = colors.fg             -- bright white
end

return M

-- Telescope.nvim highlights

local M = {}

local function hl(group, attributes)
	vim.api.nvim_set_hl(0, group, attributes)
end

local function apply_deferred(colors)
	-- base46 lazy-loads its compiled telescope cache on first open, overriding
	-- startup highlights. This function is called at setup AND via FileType autocmd.

	-- Panel surfaces — sidebar_bg is slightly lighter than editor bg, matching
	-- how other NvChad themes achieve the "elevated flat panel" look.
	hl("TelescopeNormal",        { fg = colors.fg, bg = colors.sidebar_bg })
	hl("TelescopeResultsNormal", { bg = colors.sidebar_bg })
	hl("TelescopePreviewNormal", { bg = colors.sidebar_bg })

	-- All borders invisible — matched to their panel bg so no hard rectangle.
	hl("TelescopeBorder",        { fg = colors.sidebar_bg, bg = colors.sidebar_bg })
	hl("TelescopeResultsBorder", { fg = colors.sidebar_bg, bg = colors.sidebar_bg })
	hl("TelescopePreviewBorder", { fg = colors.sidebar_bg, bg = colors.sidebar_bg })

	-- Prompt area slightly lighter than the panel (cursor_line), matching reference.
	hl("TelescopePromptNormal",  { fg = colors.fg,      bg = colors.cursor_line })
	hl("TelescopePromptBorder",  { fg = colors.cursor_line, bg = colors.cursor_line })
	hl("TelescopePromptPrefix",  { fg = colors.keyword, bg = colors.cursor_line })

	-- Titles: base46 defaults to pink/red prompt, lime-green preview.
	-- Override with our palette: keyword pink for prompt, teal for preview.
	hl("TelescopePromptTitle",   { fg = colors.bg, bg = colors.keyword })
	hl("TelescopePreviewTitle",  { fg = colors.bg, bg = colors.function_name })
	-- borderless: ResultsTitle invisible (same as panel bg)
	hl("TelescopeResultsTitle",  { fg = colors.sidebar_bg, bg = colors.sidebar_bg })

	-- Selection: base46 sets bg = #07091a (barely different from sidebar_bg).
	-- Must be in apply_deferred so it wins after the lazy cache loads.
	hl("TelescopeSelection",      { bg = colors.selection })
	hl("TelescopeSelectionCaret", { fg = colors.keyword, bg = colors.selection })
	hl("TelescopeMatching",       { fg = colors.popup_highlight, bold = true })
end

function M.setup(colors, _)
	hl("TelescopeTitle",          { fg = colors.keyword, bold = true })
	hl("TelescopePromptCounter",  { fg = colors.comment })
	hl("TelescopeResultsVirtText", { fg = colors.comment })

	-- Groups that base46 lazy-loads — applied now and again via FileType
	apply_deferred(colors)

	-- Multi-selection
	hl("TelescopeMultiSelection", { fg = colors.git_add })

	-- Diff columns
	hl("TelescopeResultsDiffAdd",    { fg = colors.git_add })
	hl("TelescopeResultsDiffChange", { fg = colors.git_change })
	hl("TelescopeResultsDiffDelete", { fg = colors.git_delete })

	-- Reapply after base46 lazy-loads its telescope cache on first open
	local group = vim.api.nvim_create_augroup("MeowTelescopeHL", { clear = true })
	vim.api.nvim_create_autocmd("FileType", {
		group = group,
		pattern = "TelescopePrompt",
		callback = function()
			if vim.g.colors_name == "meow" then
				apply_deferred(colors)
			end
		end,
	})
end

return M

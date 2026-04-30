-- Telescope.nvim highlights

local M = {}

local function hl(group, attributes)
	vim.api.nvim_set_hl(0, group, attributes)
end

function M.setup(colors, _)
	-- Base
	hl("TelescopeNormal", { bg = colors.popup_bg, fg = colors.fg })
	hl("TelescopeBorder", { fg = colors.popup_border, bg = colors.popup_bg })
	hl("TelescopeTitle", { fg = colors.keyword, bold = true })

	-- Prompt
	hl("TelescopePromptNormal", { bg = colors.bg })
	hl("TelescopePromptBorder", { fg = colors.popup_border })
	hl("TelescopePromptPrefix", { fg = colors.keyword })
	hl("TelescopePromptCounter", { fg = colors.comment })

	-- Results
	hl("TelescopeResultsNormal", { bg = colors.popup_bg })
	hl("TelescopeResultsBorder", { fg = colors.popup_border })
	hl("TelescopeResultsTitle", { fg = colors.function_name })
	hl("TelescopeResultsVirtText", { fg = colors.comment })

	-- Preview
	hl("TelescopePreviewNormal", { bg = colors.popup_bg })
	hl("TelescopePreviewBorder", { fg = colors.popup_border })
	hl("TelescopePreviewTitle", { fg = colors.type })

	-- Selection
	hl("TelescopeSelection", { bg = colors.selection })
	hl("TelescopeSelectionCaret", { fg = colors.keyword })

	-- Matching
	hl("TelescopeMatching", { fg = colors.popup_highlight })

	-- Multi-selection
	hl("TelescopeMultiSelection", { fg = colors.git_add })
end

return M

-- Git signs and diff highlights

local M = {}

local function hl(group, attributes)
	vim.api.nvim_set_hl(0, group, attributes)
end

function M.setup(colors, _)
	-- Gitsigns
	hl("GitSignsAdd", { fg = colors.git_add })
	hl("GitSignsChange", { fg = colors.git_change })
	hl("GitSignsDelete", { fg = colors.git_delete })
	hl("GitSignsAddLn", { bg = colors.diff_add })
	hl("GitSignsChangeLn", { bg = colors.diff_modify })
	hl("GitSignsDeleteLn", { bg = colors.diff_remove })

	-- Diff view
	hl("DiffAdd", { bg = colors.diff_add })
	hl("DiffChange", { bg = colors.diff_modify })
	hl("DiffDelete", { bg = colors.diff_remove })
	hl("DiffText", { bg = colors.popup_highlight_bg, fg = colors.bg })

	-- Git signs (legacy)
	hl("SignAdd", { fg = colors.git_add })
	hl("SignChange", { fg = colors.git_change })
	hl("SignDelete", { fg = colors.git_delete })
end

return M

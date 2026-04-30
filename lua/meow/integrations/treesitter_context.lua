-- nvim-treesitter-context highlights
-- https://github.com/nvim-treesitter/nvim-treesitter-context

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  hl("TreesitterContext",                    { bg = colors.cursor_line })
  hl("TreesitterContextBottom",              { underline = true, sp = colors.line_nr })
  hl("TreesitterContextSeparator",           { fg = colors.line_nr })
  hl("TreesitterContextLineNumber",          { fg = colors.line_nr_active, bg = colors.cursor_line })
  hl("TreesitterContextLineNumberBottom",    { fg = colors.line_nr, bg = colors.cursor_line, underline = true, sp = colors.line_nr })
end

return M

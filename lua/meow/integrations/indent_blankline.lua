-- indent-blankline.nvim highlights
-- https://github.com/lukas-reineke/indent-blankline.nvim

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  hl("IblIndent",      { fg = colors.whitespace, nocombine = true })
  hl("IblScope",       { fg = colors.line_nr,    nocombine = true })
  hl("IblWhitespace",  { fg = colors.whitespace, nocombine = true })

  -- v2 (legacy) names kept for backwards compat
  hl("IndentBlanklineChar",                  { fg = colors.whitespace, nocombine = true })
  hl("IndentBlanklineContextChar",           { fg = colors.line_nr,    nocombine = true })
  hl("IndentBlanklineSpaceChar",             { fg = colors.whitespace, nocombine = true })
  hl("IndentBlanklineSpaceCharBlankline",    { fg = colors.whitespace, nocombine = true })
end

return M

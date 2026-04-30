-- neo-tree.nvim highlights
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  hl("NeoTreeNormal",          { fg = colors.fg, bg = colors.bg })
  hl("NeoTreeNormalNC",        { fg = colors.fg, bg = colors.bg })
  hl("NeoTreeFloatBorder",     { fg = colors.popup_border, bg = colors.popup_bg })
  hl("NeoTreeFloatTitle",      { fg = colors.keyword, bold = true })
  hl("NeoTreeRootName",        { fg = colors.keyword, bold = true })
  hl("NeoTreeDirectoryName",   { fg = colors.function_name })
  hl("NeoTreeDirectoryIcon",   { fg = colors.function_name })
  hl("NeoTreeFileName",        { fg = colors.fg })
  hl("NeoTreeFileIcon",        { fg = colors.fg })
  hl("NeoTreeFileNameOpened",  { fg = colors.keyword })
  hl("NeoTreeIndentMarker",    { fg = colors.line_nr })
  hl("NeoTreeExpander",        { fg = colors.line_nr })
  hl("NeoTreeGitAdded",        { fg = colors.git_add })
  hl("NeoTreeGitModified",     { fg = colors.git_change })
  hl("NeoTreeGitDeleted",      { fg = colors.git_delete })
  hl("NeoTreeGitUntracked",    { fg = colors.warning })
  hl("NeoTreeGitConflict",     { fg = colors.error })
  hl("NeoTreeSymbolicLinkTarget", { fg = colors.type })
end

return M

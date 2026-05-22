-- fzf-lua highlights
-- https://github.com/ibhagwan/fzf-lua

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  -- Windows
  hl("FzfLuaNormal",         { fg = colors.fg,           bg = colors.popup_bg })
  hl("FzfLuaBorder",         { fg = colors.popup_border, bg = colors.popup_bg })
  hl("FzfLuaTitle",          { fg = colors.keyword,      bold = true })
  hl("FzfLuaCursorLine",     { bg = colors.cursor_line })
  hl("FzfLuaCursorLineNr",   { fg = colors.line_nr_active, bg = colors.cursor_line })

  -- Preview
  hl("FzfLuaPreviewNormal",  { fg = colors.fg,           bg = colors.popup_bg })
  hl("FzfLuaPreviewBorder",  { fg = colors.popup_border, bg = colors.popup_bg })
  hl("FzfLuaPreviewTitle",   { fg = colors.type,         bold = true })

  -- Scrollbar
  hl("FzfLuaScrollBorderEmpty", { fg = colors.popup_border })
  hl("FzfLuaScrollBorderFull",  { fg = colors.popup_highlight })
  hl("FzfLuaScrollFloatEmpty",  { bg = colors.cursor_line })
  hl("FzfLuaScrollFloatFull",   { bg = colors.popup_highlight })

  -- Prompt / input
  hl("FzfLuaHeaderBind",     { fg = colors.constant })
  hl("FzfLuaHeaderText",     { fg = colors.comment })
  hl("FzfLuaBufFlagCur",     { fg = colors.keyword })
  hl("FzfLuaBufFlagAlt",     { fg = colors.function_name })
  hl("FzfLuaBufNr",          { fg = colors.number })
  hl("FzfLuaBufName",        { fg = colors.fg })

  -- Path components
  hl("FzfLuaPathColNr",      { fg = colors.number })
  hl("FzfLuaPathLineNr",     { fg = colors.line_nr_active })

  -- Matching / live-grep
  hl("FzfLuaMatch",          { fg = colors.keyword, bold = true })

  -- Git status decorators
  hl("FzfLuaGitStatusStaged",    { fg = colors.git_add })
  hl("FzfLuaGitStatusUnstaged",  { fg = colors.git_change })
  hl("FzfLuaGitStatusUntracked", { fg = colors.warning })
  hl("FzfLuaGitStatusModified",  { fg = colors.git_change })
  hl("FzfLuaGitStatusRenamed",   { fg = colors.git_change })
  hl("FzfLuaGitStatusDeleted",   { fg = colors.git_delete })
  hl("FzfLuaGitStatusConflict",  { fg = colors.error })

  -- LSP / diagnostics
  hl("FzfLuaLspError",   { fg = colors.error })
  hl("FzfLuaLspWarning", { fg = colors.warning })
  hl("FzfLuaLspInfo",    { fg = colors.info })
  hl("FzfLuaLspHint",    { fg = colors.hint })
end

return M

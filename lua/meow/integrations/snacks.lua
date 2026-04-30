-- snacks.nvim highlights
-- https://github.com/folke/snacks.nvim

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  -- Base
  hl("SnacksNormal",      { fg = colors.fg,  bg = colors.bg })
  hl("SnacksNormalFloat", { fg = colors.fg,  bg = colors.popup_bg })
  hl("SnacksBackdrop",    { bg = colors.bg,  blend = 60 })
  hl("SnacksScratchKey",  { fg = colors.keyword })
  hl("SnacksScratchDesc", { fg = colors.comment })

  -- Dashboard
  hl("SnacksDashboardNormal",    { fg = colors.fg,      bg = colors.bg })
  hl("SnacksDashboardDesc",      { fg = colors.fg })
  hl("SnacksDashboardFile",      { fg = colors.function_name })
  hl("SnacksDashboardDir",       { fg = colors.comment })
  hl("SnacksDashboardDate",      { fg = colors.comment })
  hl("SnacksDashboardFooter",    { fg = colors.comment, italic = true })
  hl("SnacksDashboardHeader",    { fg = colors.keyword })
  hl("SnacksDashboardIcon",      { fg = colors.keyword })
  hl("SnacksDashboardKey",       { fg = colors.constant, bold = true })
  hl("SnacksDashboardSpecial",   { fg = colors.property })
  hl("SnacksDashboardTitle",     { fg = colors.keyword, bold = true })
  hl("SnacksDashboardTerminal",  { fg = colors.fg, bg = colors.bg })

  -- Notifier
  hl("SnacksNotifierError",       { fg = colors.error })
  hl("SnacksNotifierWarn",        { fg = colors.warning })
  hl("SnacksNotifierInfo",        { fg = colors.info })
  hl("SnacksNotifierDebug",       { fg = colors.comment })
  hl("SnacksNotifierTrace",       { fg = colors.property })
  hl("SnacksNotifierBorderError", { fg = colors.error })
  hl("SnacksNotifierBorderWarn",  { fg = colors.warning })
  hl("SnacksNotifierBorderInfo",  { fg = colors.info })
  hl("SnacksNotifierBorderDebug", { fg = colors.popup_border })
  hl("SnacksNotifierBorderTrace", { fg = colors.popup_border })
  hl("SnacksNotifierTitleError",  { fg = colors.error,   bold = true })
  hl("SnacksNotifierTitleWarn",   { fg = colors.warning, bold = true })
  hl("SnacksNotifierTitleInfo",   { fg = colors.info,    bold = true })
  hl("SnacksNotifierTitleDebug",  { fg = colors.comment, bold = true })
  hl("SnacksNotifierTitleTrace",  { fg = colors.property, bold = true })
  hl("SnacksNotifierIconError",   { fg = colors.error })
  hl("SnacksNotifierIconWarn",    { fg = colors.warning })
  hl("SnacksNotifierIconInfo",    { fg = colors.info })
  hl("SnacksNotifierIconDebug",   { fg = colors.comment })
  hl("SnacksNotifierIconTrace",   { fg = colors.property })

  -- Picker
  hl("SnacksPickerNormal",        { fg = colors.fg,          bg = colors.popup_bg })
  hl("SnacksPickerBorder",        { fg = colors.popup_border,bg = colors.popup_bg })
  hl("SnacksPickerTitle",         { fg = colors.keyword,     bold = true })
  hl("SnacksPickerFooter",        { fg = colors.comment,     bg = colors.popup_bg })
  hl("SnacksPickerCursor",        { fg = colors.bg,          bg = colors.keyword })
  hl("SnacksPickerCursorLine",    { bg = colors.cursor_line })
  hl("SnacksPickerMatch",         { fg = colors.keyword,     bold = true })
  hl("SnacksPickerSelected",      { fg = colors.keyword })
  hl("SnacksPickerToggle",        { fg = colors.function_name })
  hl("SnacksPickerSearch",        { bg = colors.search_match })
  hl("SnacksPickerDir",           { fg = colors.comment })
  hl("SnacksPickerFile",          { fg = colors.fg })
  hl("SnacksPickerGitStatusAdded",    { fg = colors.git_add })
  hl("SnacksPickerGitStatusModified", { fg = colors.git_change })
  hl("SnacksPickerGitStatusDeleted",  { fg = colors.git_delete })

  -- Indent
  hl("SnacksIndent",       { fg = colors.whitespace, nocombine = true })
  hl("SnacksIndentScope",  { fg = colors.line_nr,    nocombine = true })
  hl("SnacksIndent1",      { fg = colors.keyword })
  hl("SnacksIndent2",      { fg = colors.function_name })
  hl("SnacksIndent3",      { fg = colors.type })
  hl("SnacksIndent4",      { fg = colors.property })
  hl("SnacksIndent5",      { fg = colors.constant })
  hl("SnacksIndent6",      { fg = colors.string })
  hl("SnacksIndent7",      { fg = colors.variable })
  hl("SnacksIndent8",      { fg = colors.number })

  -- Words (word highlight)
  hl("SnacksWords",        { bg = colors.cursor_line })
  hl("SnacksWordsOther",   { bg = colors.cursor_line })

  -- Zen
  hl("SnacksZenFullscreen", { bg = colors.bg })
end

return M

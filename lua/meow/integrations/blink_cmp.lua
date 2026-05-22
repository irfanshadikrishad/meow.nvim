-- blink.cmp highlights
-- https://github.com/Saghen/blink.cmp

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  -- Menu window
  hl("BlinkCmpMenu",           { fg = colors.fg,      bg = colors.popup_bg })
  hl("BlinkCmpMenuBorder",     { fg = colors.popup_border, bg = colors.popup_bg })
  hl("BlinkCmpMenuSelection",  { bg = colors.cursor_line })

  -- Scrollbar
  hl("BlinkCmpScrollBarThumb",  { bg = colors.popup_highlight })
  hl("BlinkCmpScrollBarGutter", { bg = colors.popup_bg })

  -- Labels
  hl("BlinkCmpLabel",            { fg = colors.fg })
  hl("BlinkCmpLabelDeprecated",  { fg = colors.comment, strikethrough = true })
  hl("BlinkCmpLabelMatch",       { fg = colors.keyword, bold = true })
  hl("BlinkCmpLabelDetail",      { fg = colors.comment })
  hl("BlinkCmpLabelDescription", { fg = colors.comment })

  -- Ghost text (inline preview)
  hl("BlinkCmpGhostText", { fg = colors.comment })

  -- Source name in the menu
  hl("BlinkCmpSource", { fg = colors.comment })

  -- Kind base
  hl("BlinkCmpKind",           { fg = colors.function_name })

  -- Kind-specific
  hl("BlinkCmpKindText",          { fg = colors.fg })
  hl("BlinkCmpKindMethod",        { fg = colors.function_name })
  hl("BlinkCmpKindFunction",      { fg = colors.function_name })
  hl("BlinkCmpKindConstructor",   { fg = colors.function_name })
  hl("BlinkCmpKindField",         { fg = colors.property })
  hl("BlinkCmpKindVariable",      { fg = colors.variable })
  hl("BlinkCmpKindClass",         { fg = colors.type })
  hl("BlinkCmpKindInterface",     { fg = colors.type })
  hl("BlinkCmpKindModule",        { fg = colors.type })
  hl("BlinkCmpKindProperty",      { fg = colors.property })
  hl("BlinkCmpKindUnit",          { fg = colors.number })
  hl("BlinkCmpKindValue",         { fg = colors.number })
  hl("BlinkCmpKindEnum",          { fg = colors.type })
  hl("BlinkCmpKindKeyword",       { fg = colors.keyword })
  hl("BlinkCmpKindSnippet",       { fg = colors.string })
  hl("BlinkCmpKindColor",         { fg = colors.constant })
  hl("BlinkCmpKindFile",          { fg = colors.fg })
  hl("BlinkCmpKindReference",     { fg = colors.info })
  hl("BlinkCmpKindFolder",        { fg = colors.function_name })
  hl("BlinkCmpKindEnumMember",    { fg = colors.constant })
  hl("BlinkCmpKindConstant",      { fg = colors.constant })
  hl("BlinkCmpKindStruct",        { fg = colors.type })
  hl("BlinkCmpKindEvent",         { fg = colors.warning })
  hl("BlinkCmpKindOperator",      { fg = colors.operator })
  hl("BlinkCmpKindTypeParameter", { fg = colors.type })
end

return M

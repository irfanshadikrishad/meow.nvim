-- nvim-cmp highlights
-- https://github.com/hrsh7th/nvim-cmp

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  hl("CmpItemAbbr",           { fg = colors.fg })
  hl("CmpItemAbbrDeprecated", { fg = colors.comment, strikethrough = true })
  hl("CmpItemAbbrMatch",      { fg = colors.keyword, bold = true })
  hl("CmpItemAbbrMatchFuzzy", { fg = colors.keyword })
  hl("CmpItemMenu",           { fg = colors.comment })
  hl("CmpItemKind",           { fg = colors.function_name })

  -- Kind-specific icons
  hl("CmpItemKindFunction",  { fg = colors.function_name })
  hl("CmpItemKindMethod",    { fg = colors.function_name })
  hl("CmpItemKindVariable",  { fg = colors.variable })
  hl("CmpItemKindField",     { fg = colors.property })
  hl("CmpItemKindProperty",  { fg = colors.property })
  hl("CmpItemKindClass",     { fg = colors.type })
  hl("CmpItemKindInterface", { fg = colors.type })
  hl("CmpItemKindEnum",      { fg = colors.type })
  hl("CmpItemKindKeyword",   { fg = colors.keyword })
  hl("CmpItemKindSnippet",   { fg = colors.string })
  hl("CmpItemKindText",      { fg = colors.fg })
  hl("CmpItemKindModule",    { fg = colors.type })
  hl("CmpItemKindConstant",  { fg = colors.constant })
  hl("CmpItemKindValue",     { fg = colors.number })
end

return M

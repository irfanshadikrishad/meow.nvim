-- which-key.nvim highlights
-- https://github.com/folke/which-key.nvim

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  hl("WhichKey",          { fg = colors.keyword })
  hl("WhichKeyGroup",     { fg = colors.function_name })
  hl("WhichKeyDesc",      { fg = colors.fg })
  hl("WhichKeySeparator", { fg = colors.comment })
  hl("WhichKeyFloat",     { bg = colors.popup_bg })
  hl("WhichKeyBorder",    { fg = colors.popup_border, bg = colors.popup_bg })
  hl("WhichKeyValue",     { fg = colors.comment })
end

return M

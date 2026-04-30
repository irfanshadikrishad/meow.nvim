-- rainbow-delimiters.nvim highlights
-- https://github.com/HiPhish/rainbow-delimiters.nvim

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  hl("RainbowDelimiterRed",    { fg = colors.keyword })
  hl("RainbowDelimiterYellow", { fg = colors.constant })
  hl("RainbowDelimiterBlue",   { fg = colors.function_name })
  hl("RainbowDelimiterOrange", { fg = colors.warning })
  hl("RainbowDelimiterGreen",  { fg = colors.string })
  hl("RainbowDelimiterViolet", { fg = colors.property })
  hl("RainbowDelimiterCyan",   { fg = colors.type })
end

return M

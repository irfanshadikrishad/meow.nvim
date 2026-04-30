-- vim-illuminate highlights
-- https://github.com/RRethy/vim-illuminate

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  hl("IlluminatedWordText",  { bg = colors.cursor_line })
  hl("IlluminatedWordRead",  { bg = colors.cursor_line })
  hl("IlluminatedWordWrite", { bg = colors.cursor_line, underline = true, sp = colors.keyword })
end

return M

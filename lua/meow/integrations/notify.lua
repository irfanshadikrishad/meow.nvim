-- nvim-notify highlights
-- https://github.com/rcarriga/nvim-notify

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  hl("NotifyBackground",    { bg = colors.bg })

  hl("NotifyERRORBorder",   { fg = colors.error })
  hl("NotifyWARNBorder",    { fg = colors.warning })
  hl("NotifyINFOBorder",    { fg = colors.info })
  hl("NotifyDEBUGBorder",   { fg = colors.comment })
  hl("NotifyTRACEBorder",   { fg = colors.property })

  hl("NotifyERRORIcon",     { fg = colors.error })
  hl("NotifyWARNIcon",      { fg = colors.warning })
  hl("NotifyINFOIcon",      { fg = colors.info })
  hl("NotifyDEBUGIcon",     { fg = colors.comment })
  hl("NotifyTRACEIcon",     { fg = colors.property })

  hl("NotifyERRORTitle",    { fg = colors.error })
  hl("NotifyWARNTitle",     { fg = colors.warning })
  hl("NotifyINFOTitle",     { fg = colors.info })
  hl("NotifyDEBUGTitle",    { fg = colors.comment })
  hl("NotifyTRACETitle",    { fg = colors.property })

  hl("NotifyERRORBody",     { fg = colors.fg, bg = colors.bg })
  hl("NotifyWARNBody",      { fg = colors.fg, bg = colors.bg })
  hl("NotifyINFOBody",      { fg = colors.fg, bg = colors.bg })
  hl("NotifyDEBUGBody",     { fg = colors.fg, bg = colors.bg })
  hl("NotifyTRACEBody",     { fg = colors.fg, bg = colors.bg })
end

return M

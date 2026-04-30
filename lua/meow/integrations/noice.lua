-- noice.nvim highlights
-- https://github.com/folke/noice.nvim

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  -- Cmdline popup
  hl("NoiceCmdline",                    { fg = colors.fg,      bg = colors.bg })
  hl("NoiceCmdlineIcon",                { fg = colors.keyword })
  hl("NoiceCmdlineIconSearch",          { fg = colors.constant })
  hl("NoiceCmdlinePopup",               { bg = colors.popup_bg })
  hl("NoiceCmdlinePopupBorder",         { fg = colors.popup_border, bg = colors.popup_bg })
  hl("NoiceCmdlinePopupBorderSearch",   { fg = colors.constant, bg = colors.popup_bg })
  hl("NoiceCmdlinePopupTitle",          { fg = colors.keyword })

  -- Confirm dialog
  hl("NoiceConfirm",                    { bg = colors.popup_bg })
  hl("NoiceConfirmBorder",              { fg = colors.keyword, bg = colors.popup_bg })

  -- Mini (bottom-right messages)
  hl("NoiceMini",                       { fg = colors.fg, bg = colors.bg })

  -- Format tokens
  hl("NoiceFormatConfirm",              { fg = colors.bg,      bg = colors.keyword })
  hl("NoiceFormatConfirmDefault",       { fg = colors.bg,      bg = colors.function_name })
  hl("NoiceFormatDate",                 { fg = colors.comment })
  hl("NoiceFormatEvent",                { fg = colors.comment })
  hl("NoiceFormatKind",                 { fg = colors.type })
  hl("NoiceFormatLevelDebug",           { fg = colors.comment })
  hl("NoiceFormatLevelError",           { fg = colors.error })
  hl("NoiceFormatLevelInfo",            { fg = colors.info })
  hl("NoiceFormatLevelOff",             { fg = colors.comment })
  hl("NoiceFormatLevelTrace",           { fg = colors.comment })
  hl("NoiceFormatLevelWarn",            { fg = colors.warning })
  hl("NoiceFormatProgressDone",         { fg = colors.bg,      bg = colors.keyword })
  hl("NoiceFormatProgressTodo",         { fg = colors.comment, bg = colors.cursor_line })
  hl("NoiceFormatTitle",                { fg = colors.keyword, bold = true })

  -- LSP progress
  hl("NoiceLspProgressClient",          { fg = colors.type })
  hl("NoiceLspProgressSpinner",         { fg = colors.keyword })
  hl("NoiceLspProgressTitle",           { fg = colors.fg })

  -- Popup / split
  hl("NoicePopup",                      { bg = colors.popup_bg })
  hl("NoicePopupBorder",                { fg = colors.popup_border, bg = colors.popup_bg })
  hl("NoiceSplit",                      { bg = colors.bg })
  hl("NoiceSplitBorder",                { fg = colors.popup_border })

  -- Scrollbar
  hl("NoiceScrollbar",                  { bg = colors.cursor_line })
  hl("NoiceScrollbarThumb",             { bg = colors.popup_highlight })

  -- Misc
  hl("NoiceVirtualText",                { fg = colors.comment })
end

return M

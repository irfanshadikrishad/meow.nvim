-- NvChad UI highlights
-- Covers: statusline (St_*), tabufline (Tb*), nvdash (NvDash*)
-- https://github.com/NvChad/NvChad

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  -- ============================================================
  -- STATUSLINE
  -- Each mode has a label group (solid bg) and a separator group
  -- (fg = label bg, bg = statusline bg) for the powerline arrow.
  -- ============================================================

  -- Mode labels
  hl("St_NormalMode",      { fg = colors.bg, bg = colors.keyword,       bold = true })
  hl("St_InsertMode",      { fg = colors.bg, bg = colors.function_name, bold = true })
  hl("St_VisualMode",      { fg = colors.bg, bg = colors.property,      bold = true })
  hl("St_ReplaceMode",     { fg = colors.bg, bg = colors.error,         bold = true })
  hl("St_SelectMode",      { fg = colors.bg, bg = colors.type,          bold = true })
  hl("St_TerminalMode",    { fg = colors.bg, bg = colors.string,        bold = true })
  hl("St_NTerminalMode",   { fg = colors.bg, bg = colors.number,        bold = true })
  hl("St_CommandMode",     { fg = colors.bg, bg = colors.constant,      bold = true })
  hl("St_ConfirmMode",     { fg = colors.bg, bg = colors.warning,       bold = true })

  -- Mode separators (fg = mode colour so the arrow blends into the label)
  hl("St_NormalModeSep",      { fg = colors.keyword,       bg = colors.bg })
  hl("St_InsertModeSep",      { fg = colors.function_name, bg = colors.bg })
  hl("St_VisualModeSep",      { fg = colors.property,      bg = colors.bg })
  hl("St_ReplaceModeSep",     { fg = colors.error,         bg = colors.bg })
  hl("St_SelectModeSep",      { fg = colors.type,          bg = colors.bg })
  hl("St_TerminalModeSep",    { fg = colors.string,        bg = colors.bg })
  hl("St_NTerminalModeSep",   { fg = colors.number,        bg = colors.bg })
  hl("St_CommandModeSep",     { fg = colors.constant,      bg = colors.bg })
  hl("St_ConfirmModeSep",     { fg = colors.warning,       bg = colors.bg })

  -- Empty space / fill
  hl("St_EmptySpace",  { fg = colors.popup_border, bg = colors.bg })
  hl("St_EmptySpace2", { fg = colors.popup_border, bg = colors.cursor_line })

  -- File info section (slightly elevated bg for visual grouping)
  hl("St_file_info", { fg = colors.fg,           bg = colors.cursor_line })
  hl("St_file_sep",  { fg = colors.cursor_line,  bg = colors.bg })
  hl("St_sep_r",     { fg = colors.cursor_line,  bg = colors.bg })

  -- Git section
  hl("St_gitIcons",   { fg = colors.fg, bg = colors.bg })

  -- LSP indicator pills
  hl("St_lspError",   { fg = colors.error,   bg = colors.bg })
  hl("St_lspWarning", { fg = colors.warning, bg = colors.bg })
  hl("St_lspHints",   { fg = colors.hint,    bg = colors.bg })
  hl("St_lspInfo",    { fg = colors.info,    bg = colors.bg })
  hl("St_lsp_msg",    { fg = colors.comment, bg = colors.bg })

  -- CWD section (accent coloured, mirroring the mode label style)
  hl("St_cwd",      { fg = colors.bg, bg = colors.keyword, bold = true })
  hl("St_cwd_icon", { fg = colors.bg, bg = colors.keyword })
  hl("St_cwd_sep",  { fg = colors.keyword, bg = colors.bg })

  -- Position section
  hl("St_pos",     { fg = colors.fg,          bg = colors.cursor_line })
  hl("St_pos_sep", { fg = colors.cursor_line, bg = colors.bg })

  -- ============================================================
  -- TABUFLINE
  -- ============================================================
  hl("TbFill",          { bg = colors.bg })
  hl("TbBufOn",         { fg = colors.fg,          bg = colors.cursor_line, bold = true })
  hl("TbBufOnClose",    { fg = colors.keyword,      bg = colors.cursor_line })
  hl("TbBufOff",        { fg = colors.line_nr,      bg = colors.bg })
  hl("TbBufOffClose",   { fg = colors.line_nr,      bg = colors.bg })
  hl("TbBufOnMod",      { fg = colors.git_change,   bg = colors.cursor_line })
  hl("TbBufOffMod",     { fg = colors.git_change,   bg = colors.bg })
  hl("TbTabOn",         { fg = colors.bg,           bg = colors.keyword, bold = true })
  hl("TbTabOff",        { fg = colors.line_nr,      bg = colors.bg })
  hl("TbTabNewBtn",     { fg = colors.string,       bg = colors.bg, bold = true })
  hl("TbTabCloseBtn",   { fg = colors.bg,           bg = colors.error })

  -- ============================================================
  -- NVDASH (NvChad dashboard)
  -- ============================================================
  hl("NvDashAscii",   { fg = colors.keyword, bg = colors.bg })
  hl("NvDashButtons", { fg = colors.fg,      bg = colors.bg })
end

return M

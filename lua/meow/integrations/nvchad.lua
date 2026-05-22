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
  -- Supports both "minimal" (gen_block pattern: _sep/_bg/_txt)
  -- and "default" (flat groups) NvChad statusline themes.
  -- ============================================================

  -- Mode icon sections (all styles)
  hl("St_NormalMode",      { fg = colors.bg, bg = colors.keyword,       bold = true })
  hl("St_InsertMode",      { fg = colors.bg, bg = colors.function_name, bold = true })
  hl("St_VisualMode",      { fg = colors.bg, bg = colors.property,      bold = true })
  hl("St_ReplaceMode",     { fg = colors.bg, bg = colors.error,         bold = true })
  hl("St_SelectMode",      { fg = colors.bg, bg = colors.type,          bold = true })
  hl("St_TerminalMode",    { fg = colors.bg, bg = colors.string,        bold = true })
  hl("St_NTerminalMode",   { fg = colors.bg, bg = colors.number,        bold = true })
  hl("St_CommandMode",     { fg = colors.bg, bg = colors.constant,      bold = true })
  hl("St_ConfirmMode",     { fg = colors.bg, bg = colors.warning,       bold = true })

  -- Mode separators (left-edge block, fg = mode colour)
  hl("St_NormalModeSep",    { fg = colors.keyword,       bg = colors.bg })
  hl("St_InsertModeSep",    { fg = colors.function_name, bg = colors.bg })
  hl("St_VisualModeSep",    { fg = colors.property,      bg = colors.bg })
  hl("St_ReplaceModeSep",   { fg = colors.error,         bg = colors.bg })
  hl("St_SelectModeSep",    { fg = colors.type,          bg = colors.bg })
  hl("St_TerminalModeSep",  { fg = colors.string,        bg = colors.bg })
  hl("St_NTerminalModeSep", { fg = colors.number,        bg = colors.bg })
  hl("St_CommandModeSep",   { fg = colors.constant,      bg = colors.bg })
  hl("St_ConfirmModeSep",   { fg = colors.warning,       bg = colors.bg })

  -- Mode text sections (minimal only — "ModeText" / "modeText" are the same group,
  -- Neovim highlight groups are case-insensitive)
  hl("St_NormalmodeText",    { fg = colors.keyword,       bg = colors.cursor_line })
  hl("St_InsertmodeText",    { fg = colors.function_name, bg = colors.cursor_line })
  hl("St_VisualmodeText",    { fg = colors.property,      bg = colors.cursor_line })
  hl("St_ReplacemodeText",   { fg = colors.error,         bg = colors.cursor_line })
  hl("St_SelectmodeText",    { fg = colors.type,          bg = colors.cursor_line })
  hl("St_TerminalmodeText",  { fg = colors.string,        bg = colors.cursor_line })
  hl("St_NTerminalmodeText", { fg = colors.number,        bg = colors.cursor_line })
  hl("St_CommandmodeText",   { fg = colors.constant,      bg = colors.cursor_line })
  hl("St_ConfirmmodeText",   { fg = colors.warning,       bg = colors.cursor_line })

  -- Shared right-edge separator and empty-space fill
  hl("St_sep_r",      { fg = colors.cursor_line, bg = "NONE" })
  hl("St_EmptySpace",  { fg = colors.bg, bg = "NONE" })
  hl("St_EmptySpace2", { fg = colors.bg, bg = "NONE" })

  -- File section
  -- minimal: St_file_sep / St_file_bg / St_file_txt
  -- default: St_file / St_file_sep
  hl("St_file",     { fg = colors.fg,            bg = colors.cursor_line })
  hl("St_file_sep", { fg = colors.function_name, bg = colors.bg })
  hl("St_file_bg",  { fg = colors.bg,            bg = colors.function_name })
  hl("St_file_txt", { fg = colors.function_name, bg = colors.cursor_line })

  -- Git section
  hl("St_gitIcons", { fg = colors.fg, bg = colors.bg })

  -- LSP indicator (minimal: St_Lsp / St_LspMsg use capital L per NvChad source)
  hl("St_Lsp",        { fg = colors.info,    bg = colors.bg })
  hl("St_LspMsg",     { fg = colors.string,  bg = colors.bg })
  hl("St_lspError",   { fg = colors.error,   bg = colors.bg })
  hl("St_lspWarning", { fg = colors.warning, bg = colors.bg })
  hl("St_LspHints",   { fg = colors.hint,    bg = colors.bg })
  hl("St_LspInfo",    { fg = colors.info,    bg = colors.bg })

  -- CWD section (folder icon + directory name)
  -- minimal: St_cwd_sep / St_cwd_bg / St_cwd_txt
  -- default: St_cwd_sep / St_cwd_icon / St_cwd_text
  hl("St_cwd_sep",  { fg = colors.keyword, bg = colors.bg })
  hl("St_cwd_bg",   { fg = colors.bg,      bg = colors.keyword })
  hl("St_cwd_txt",  { fg = colors.keyword, bg = colors.cursor_line })
  -- legacy names kept for default/vscode statusline styles
  hl("St_cwd_icon", { fg = colors.bg,      bg = colors.keyword })
  hl("St_cwd_text", { fg = colors.keyword, bg = colors.cursor_line })

  -- Position section (line/col indicator)
  -- minimal: St_Pos_sep / St_Pos_bg / St_Pos_txt (capital P)
  -- default: St_pos_sep / St_pos_icon / St_pos_text
  hl("St_Pos_sep",  { fg = colors.info, bg = colors.bg })
  hl("St_Pos_bg",   { fg = colors.bg,   bg = colors.info })
  hl("St_Pos_txt",  { fg = colors.info, bg = colors.cursor_line })
  -- legacy names for default/vscode styles
  hl("St_pos_sep",  { fg = colors.info, bg = colors.bg })
  hl("St_pos_icon", { fg = colors.bg,   bg = colors.info })
  hl("St_pos_text", { fg = colors.info, bg = colors.cursor_line })

  -- ============================================================
  -- TABUFLINE
  -- sidebar_bg as bar bg creates a visible bar distinct from the editor.
  -- cursor_line as active-tab bg raises the active tab above the bar.
  -- ============================================================
  local function apply_tbline()
    -- Fill and inactive tabs blend with the editor so an empty tab bar is invisible.
    -- Only the active tab uses cursor_line to stand out without leaving a ghost stripe.
    hl("Tabline",         { bg = colors.bg })
    hl("TbFill",          { bg = colors.bg })
    hl("TbBufOn",         { fg = colors.fg,         bg = colors.cursor_line, bold = true })
    hl("TbBufOnClose",    { fg = colors.keyword,    bg = colors.cursor_line })
    hl("TbBufOff",        { fg = colors.line_nr,    bg = colors.bg })
    hl("TbBufOffClose",   { fg = colors.line_nr,    bg = colors.bg })
    hl("TbBufOnMod",      { fg = colors.git_change, bg = colors.cursor_line })
    hl("TbBufOffMod",     { fg = colors.git_change, bg = colors.bg })
    hl("TbTabOn",         { fg = colors.bg,         bg = colors.keyword, bold = true })
    hl("TbTabOff",        { fg = colors.line_nr,    bg = colors.bg })
    hl("TbTabNewBtn",     { fg = colors.string,     bg = colors.bg, bold = true })
    hl("TbTabCloseBtn",   { fg = colors.bg,         bg = colors.error })
  end
  apply_tbline()

  -- NvChad lazy-loads its tbline cache on BufAdd; reapply after it.
  local tbline_group = vim.api.nvim_create_augroup("MeowTblineHL", { clear = true })
  vim.api.nvim_create_autocmd("BufAdd", {
    group = tbline_group,
    once  = true,
    callback = function()
      vim.schedule(function()
        vim.schedule(function()
          if vim.g.colors_name == "meow" then apply_tbline() end
        end)
      end)
    end,
  })

  -- ============================================================
  -- NVDASH (NvChad dashboard)
  -- ============================================================
  hl("NvDashAscii",   { fg = colors.keyword, bg = colors.bg })
  hl("NvDashButtons", { fg = colors.fg,      bg = colors.bg })

  -- ============================================================
  -- FILE TREE (base46 overrides these; re-assert sidebar_bg here)
  -- ============================================================
  local function apply_filetree()
    hl("NvimTreeNormal",       { fg = colors.fg,          bg = colors.sidebar_bg })
    hl("NvimTreeNormalNC",     { fg = colors.fg,          bg = colors.sidebar_bg })
    hl("NvimTreeEndOfBuffer",  { fg = colors.sidebar_bg,  bg = colors.sidebar_bg })
    hl("NvimTreeWinSeparator", { fg = colors.sidebar_bg,  bg = colors.sidebar_bg })
    hl("NvimTreeVertSplit",    { fg = colors.sidebar_bg,  bg = colors.sidebar_bg })
    -- cursor_line is clearly lighter than sidebar_bg — the selected item stands out
    hl("NvimTreeCursorLine",   { bg = colors.cursor_line })
    hl("NeoTreeNormal",        { fg = colors.fg,          bg = colors.sidebar_bg })
    hl("NeoTreeNormalNC",      { fg = colors.fg,          bg = colors.sidebar_bg })
    hl("NeoTreeCursorLine",    { bg = colors.cursor_line })
    hl("NeoTreeWinSeparator",  { fg = colors.sidebar_bg,  bg = colors.sidebar_bg })
  end
  apply_filetree()

  -- base46 lazy-loads nvimtree highlights when nvim-tree first opens
  local filetree_group = vim.api.nvim_create_augroup("MeowFileTreeHL", { clear = true })
  vim.api.nvim_create_autocmd("FileType", {
    group   = filetree_group,
    pattern = { "NvimTree", "neo-tree" },
    callback = function()
      if vim.g.colors_name == "meow" then apply_filetree() end
    end,
  })
end

return M

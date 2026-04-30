local M = {}

---@class MeowPalette
---@field bg string
---@field fg string
---@field cursor string
---@field cursor_line string
---@field selection string
---@field line_nr string
---@field line_nr_active string
---@field popup_bg string
---@field popup_border string
---@field popup_highlight string
---@field popup_highlight_bg string
---@field popup_highlight_fg string
---@field comment string
---@field keyword string
---@field function_name string
---@field function_call string
---@field string string
---@field number string
---@field type string
---@field constant string
---@field operator string
---@field variable string
---@field property string
---@field boolean string
---@field null string
---@field error string
---@field warning string
---@field info string
---@field hint string
---@field git_add string
---@field git_change string
---@field git_delete string
---@field diff_add string
---@field diff_modify string
---@field diff_remove string
---@field search_match string
---@field search_current string
---@field bracket_match_bg string
---@field whitespace string
---@field cursor_ime string

---@type MeowPalette
local defaults = {
  -- Base editor
  bg                 = "#03040f",
  fg                 = "#B6BBC4",

  -- UI elements
  cursor             = "#B6BBC4",
  cursor_line        = "#0a1030",
  selection          = "#B6BBC420",
  line_nr            = "#45474B",
  line_nr_active     = "#ff6188",

  -- Popups & widgets
  popup_bg           = "#03040f",
  popup_border       = "#1b1b1b",
  popup_highlight    = "#ff6188",
  popup_highlight_bg = "#ff6188",
  popup_highlight_fg = "#03040f",

  -- Syntax
  comment            = "#454545",
  keyword            = "#ff6188",
  function_name      = "#3dc2ec",
  function_call      = "#E76F51",
  string             = "#98c379",
  number             = "#B99470",
  type               = "#6DA4AA",
  constant           = "#ECB365",
  operator           = "#353535",
  variable           = "#E29578",
  property           = "#858AE3",

  -- Special literals
  boolean            = "#B99470",
  null               = "#858AE3",

  -- LSP diagnostics
  error              = "#FE5D9F",
  warning            = "#FF9130",
  info               = "#4CC9F0",
  hint               = "#84A98C",

  -- Git
  git_add            = "#98c379",
  git_change         = "#ECB365",
  git_delete         = "#ff6188",

  -- Diff backgrounds
  diff_add           = "#1e3a2e",
  diff_modify        = "#3a2e1e",
  diff_remove        = "#3a1e2e",

  -- Search
  search_match       = "#4e534d94",
  search_current     = "#53575350",

  -- Misc
  bracket_match_bg   = "#2B2C28",
  whitespace         = "#45474B50",
  cursor_ime         = "#ff6188",
}

---Return the default palette without any modifications.
---@return MeowPalette
function M.get_defaults()
  return vim.deepcopy(defaults)
end

---Resolve the palette for the given config, applying color overrides and transparency.
---@param config MeowConfig
---@return MeowPalette
function M.load(config)
  local palette = vim.tbl_deep_extend("force", defaults, config.colors or {})

  if config.transparent then
    palette.bg = "NONE"
    palette.popup_bg = "NONE"
  end

  return palette
end

return M

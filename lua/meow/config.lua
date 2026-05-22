local M = {}

---@class MeowIntegrations
---@field treesitter? boolean
---@field lsp? boolean
---@field gitsigns? boolean
---@field telescope? boolean
---@field which_key? boolean
---@field cmp? boolean
---@field blink_cmp? boolean
---@field lualine? boolean
---@field neo_tree? boolean
---@field nvim_tree? boolean
---@field indent_blankline? boolean
---@field notify? boolean
---@field dashboard? boolean
---@field nvchad? boolean
---@field snacks? boolean
---@field noice? boolean
---@field illuminate? boolean
---@field treesitter_context? boolean
---@field rainbow_delimiters? boolean
---@field fzf_lua? boolean

---@class MeowConfig
---@field colors? table<string, string>    Hex color overrides — any key from MeowPalette
---@field transparent? boolean             Transparent background (default: false)
---@field italic_comments? boolean         Italic comment text (default: true)
---@field bold_keywords? boolean           Bold keyword text (default: false)
---@field integrations? MeowIntegrations   Per-integration opt-out; set a key to false to disable

---@type MeowConfig
M.defaults = {
  colors = {},
  transparent = false,
  italic_comments = true,
  bold_keywords = false,
  integrations = {
    treesitter = true,
    lsp = true,
    gitsigns = true,
    telescope = true,
    which_key = true,
    cmp              = true,
    blink_cmp        = true,
    lualine          = true,
    neo_tree         = true,
    nvim_tree        = true,
    indent_blankline = true,
    notify           = true,
    dashboard        = true,
    nvchad             = true,
    snacks             = true,
    noice              = true,
    illuminate         = true,
    treesitter_context = true,
    rainbow_delimiters = true,
    fzf_lua            = true,
  },
}

---Merge user options over defaults and return a resolved config.
---@param opts? MeowConfig
---@return MeowConfig
function M.resolve(opts)
  return vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M

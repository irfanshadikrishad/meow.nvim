-- indent-blankline.nvim highlights
-- https://github.com/lukas-reineke/indent-blankline.nvim

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

-- Track the registered hook id so we can replace it on re-setup without
-- accumulating duplicate hooks across multiple colorscheme reloads.
local _hook_id = nil

local function apply(colors)
  hl("IblIndent",     { fg = colors.whitespace, nocombine = true })
  hl("IblScope",      { fg = colors.line_nr,    nocombine = true })
  hl("IblWhitespace", { fg = colors.whitespace, nocombine = true })

  -- NvChad names these differently: IblChar / IblScopeChar
  hl("IblChar",       { fg = colors.whitespace, nocombine = true })
  hl("IblScopeChar",  { fg = colors.line_nr,    nocombine = true })

  -- v2 (legacy) names kept for backwards compat
  hl("IndentBlanklineChar",                  { fg = colors.whitespace, nocombine = true })
  hl("IndentBlanklineContextChar",           { fg = colors.line_nr,    nocombine = true })
  hl("IndentBlanklineSpaceChar",             { fg = colors.whitespace, nocombine = true })
  hl("IndentBlanklineSpaceCharBlankline",    { fg = colors.whitespace, nocombine = true })
end

function M.setup(colors, _)
  local ok, hooks = pcall(require, "ibl.hooks")
  if ok then
    if _hook_id then
      pcall(hooks.clear, _hook_id)
    end
    -- HIGHLIGHT_SETUP fires at the top of ibl's highlights.setup(), before it
    -- tries to read any configured highlight groups.  Registering here ensures
    -- all groups exist regardless of ColorScheme autocmd ordering.
    _hook_id = hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      apply(colors)
    end)
  end

  apply(colors)
end

return M

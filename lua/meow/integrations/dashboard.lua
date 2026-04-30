-- dashboard.nvim / alpha.nvim highlights
-- https://github.com/nvimdev/dashboard-nvim
-- https://github.com/goolord/alpha-nvim

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  -- dashboard-nvim
  hl("DashboardHeader",       { fg = colors.keyword })
  hl("DashboardFooter",       { fg = colors.comment })
  hl("DashboardShortCut",     { fg = colors.function_name })
  hl("DashboardProjectTitle", { fg = colors.type, bold = true })
  hl("DashboardProjectIcon",  { fg = colors.type })
  hl("DashboardMruTitle",     { fg = colors.type, bold = true })
  hl("DashboardMruIcon",      { fg = colors.type })
  hl("DashboardFiles",        { fg = colors.fg })

  -- alpha.nvim
  hl("AlphaHeader",  { fg = colors.keyword })
  hl("AlphaFooter",  { fg = colors.comment })
  hl("AlphaButtons", { fg = colors.function_name })
  hl("AlphaShortcut", { fg = colors.constant })
end

return M

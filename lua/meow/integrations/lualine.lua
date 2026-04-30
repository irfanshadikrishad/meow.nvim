-- lualine.nvim theme
-- https://github.com/nvim-lualine/lualine.nvim
--
-- Usage: add the theme to your lualine config:
--
--   require("lualine").setup({
--     options = { theme = require("meow.integrations.lualine").theme() },
--   })

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

---Return a lualine theme table built from the current resolved palette.
---@return table
function M.theme()
  local palette = require("meow").get_colors()

  local normal_bg  = palette.keyword
  local insert_bg  = palette.function_name
  local visual_bg  = palette.type
  local replace_bg = palette.error
  local command_bg = palette.constant

  local function mode_section(bg)
    return { a = { fg = palette.bg, bg = bg, gui = "bold" }, b = { fg = palette.fg, bg = palette.cursor_line }, c = { fg = palette.line_nr, bg = palette.bg } }
  end

  return {
    normal  = mode_section(normal_bg),
    insert  = mode_section(insert_bg),
    visual  = mode_section(visual_bg),
    replace = mode_section(replace_bg),
    command = mode_section(command_bg),
    inactive = {
      a = { fg = palette.line_nr, bg = palette.bg },
      b = { fg = palette.line_nr, bg = palette.bg },
      c = { fg = palette.line_nr, bg = palette.bg },
    },
  }
end

function M.setup(_, _)
  -- Lualine manages its own highlights via the theme table.
  -- No global highlight groups to set here.
end

return M

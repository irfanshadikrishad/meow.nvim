local M = {}

---@type MeowConfig
local active_config = {}

---@type MeowPalette
local active_palette = {}

---Apply the colorscheme.
---Call this once from your plugin `config` block, then set the colorscheme.
---
---@param opts? MeowConfig
function M.setup(opts)
  active_config  = require("meow.config").resolve(opts)
  active_palette = require("meow.palette").load(active_config)

  require("meow.highlights").apply(active_palette, active_config)
  require("meow.integrations").load(active_palette, active_config)

  vim.g.colors_name = "meow"
  vim.o.background  = "dark"
end

---Return the currently resolved color palette.
---Useful for building statusline themes or custom highlight groups that
---need to stay consistent with the active meow palette.
---
---If called before `setup()`, returns the palette resolved with default options.
---
---@return MeowPalette
function M.get_colors()
  if vim.tbl_isempty(active_palette) then
    local cfg = require("meow.config").resolve()
    return require("meow.palette").load(cfg)
  end
  return active_palette
end

---Register a custom integration module that will be loaded on every setup call.
---
---  require("meow").extend("my_plugin", {
---    setup = function(colors, config)
---      vim.api.nvim_set_hl(0, "MyPluginNormal", { fg = colors.fg, bg = colors.bg })
---    end,
---  })
---
---@param name string  Unique identifier; also acts as the key in `integrations` config
---@param mod  {setup: fun(colors: MeowPalette, config: MeowConfig)}
function M.extend(name, mod)
  require("meow.integrations").register(name, mod)
end

-- Re-apply on :colorscheme meow so the theme survives colorscheme reload.
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern  = "meow",
  callback = function()
    M.setup(active_config)
  end,
})

return M

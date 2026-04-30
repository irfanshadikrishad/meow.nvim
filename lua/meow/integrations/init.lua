local M = {}

---Built-in integration name → module path.
---@type table<string, string>
local builtin = {
  treesitter      = "meow.integrations.treesitter",
  lsp             = "meow.integrations.lsp",
  gitsigns        = "meow.integrations.gitsigns",
  telescope       = "meow.integrations.telescope",
  which_key       = "meow.integrations.which_key",
  cmp             = "meow.integrations.cmp",
  lualine         = "meow.integrations.lualine",
  neo_tree        = "meow.integrations.neo_tree",
  indent_blankline = "meow.integrations.indent_blankline",
  notify          = "meow.integrations.notify",
  dashboard       = "meow.integrations.dashboard",
}

---Custom integrations registered at runtime via `meow.extend()`.
---Values may be a module-path string or a table with a `setup` function.
---@type table<string, string|{setup: fun(colors: MeowPalette, config: MeowConfig)}>
local custom = {}

---Register a custom integration.
---Call this before `setup()` or from inside your plugin's `config` function.
---
---@param name string   Unique identifier (also used as the key in `integrations` config)
---@param mod string|{setup: fun(colors: MeowPalette, config: MeowConfig)}
---  Either a Lua module path string or a table with a `setup(colors, config)` function.
function M.register(name, mod)
  custom[name] = mod
end

---Load all enabled integrations.
---A missing module is silently skipped; pcall guards against optional dependencies.
---@param palette MeowPalette
---@param config MeowConfig
function M.load(palette, config)
  local enabled = config.integrations or {}

  local all = vim.tbl_extend("force", builtin, custom)

  for name, source in pairs(all) do
    if enabled[name] == false then
      goto continue
    end

    local mod
    if type(source) == "string" then
      local ok, result = pcall(require, source)
      if not ok then goto continue end
      mod = result
    else
      mod = source
    end

    if mod and type(mod.setup) == "function" then
      mod.setup(palette, config)
    end

    ::continue::
  end
end

return M

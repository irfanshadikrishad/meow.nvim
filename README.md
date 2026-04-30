# meow.nvim

A dark, vibrant colorscheme for Neovim with full Treesitter, LSP semantic token, and plugin support.

## Requirements

- Neovim >= 0.9.0
- `termguicolors` enabled
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) _(optional, for richer syntax highlighting)_

## Installation

**[lazy.nvim](https://github.com/folke/lazy.nvim)**

```lua
{
  "irfanshadikrishad/meow.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("meow").setup()
    vim.cmd.colorscheme("meow")
  end,
}
```

**[vim-plug](https://github.com/junegunn/vim-plug)**

```vim
Plug 'irfanshadikrishad/meow.nvim'
```

```lua
require("meow").setup()
vim.cmd.colorscheme("meow")
```

## Configuration

All options are optional. Unset keys fall back to the defaults shown below.

```lua
require("meow").setup({
  transparent     = false,   -- transparent background
  italic_comments = true,    -- italic comment text
  bold_keywords   = false,   -- bold keyword text

  -- Override any color in the palette (see :help meow-palette)
  colors = {
    -- bg      = "#0d0d0d",
    -- keyword = "#c678dd",
  },

  -- Disable individual integrations by setting them to false
  integrations = {
    treesitter       = true,
    lsp              = true,
    gitsigns         = true,
    telescope        = true,
    which_key        = true,
    cmp              = true,
    lualine          = true,
    neo_tree         = true,
    indent_blankline = true,
    notify           = true,
    dashboard        = true,
  },
})
```

## Integrations

All integrations are enabled by default.

| Key               | Plugin                                      |
| ----------------- | ------------------------------------------- |
| `treesitter`      | nvim-treesitter                             |
| `lsp`             | Neovim built-in LSP + semantic tokens       |
| `gitsigns`        | lewis6991/gitsigns.nvim                     |
| `telescope`       | nvim-telescope/telescope.nvim               |
| `which_key`       | folke/which-key.nvim                        |
| `cmp`             | hrsh7th/nvim-cmp                            |
| `lualine`         | nvim-lualine/lualine.nvim                   |
| `neo_tree`        | nvim-neo-tree/neo-tree.nvim                 |
| `indent_blankline`| lukas-reineke/indent-blankline.nvim         |
| `notify`          | rcarriga/nvim-notify                        |
| `dashboard`       | nvimdev/dashboard-nvim · goolord/alpha-nvim |

### Lualine

The lualine integration ships a ready-made theme:

```lua
require("lualine").setup({
  options = {
    theme = require("meow.integrations.lualine").theme(),
  },
})
```

## API

### `require("meow").setup(opts?)`

Apply the colorscheme. Call once before `vim.cmd.colorscheme("meow")`.

### `require("meow").get_colors()`

Return the active `MeowPalette` table. Safe to call before `setup()`.
Useful for building statusline themes or custom highlight groups:

```lua
local c = require("meow").get_colors()
vim.api.nvim_set_hl(0, "MyGroup", { fg = c.keyword, bg = c.bg })
```

### `require("meow").extend(name, mod)`

Register a custom integration that runs on every `setup()` call:

```lua
require("meow").extend("my_plugin", {
  setup = function(colors, config)
    vim.api.nvim_set_hl(0, "MyPluginBorder", {
      fg = colors.popup_border,
      bg = colors.popup_bg,
    })
  end,
})
```

Users can disable it the same way as a built-in:

```lua
require("meow").setup({
  integrations = { my_plugin = false },
})
```

## Testing Locally

Point Lazy at your local clone instead of GitHub:

```lua
{
  dir = "/path/to/meow.nvim",
  name = "meow",
  lazy = false,
  priority = 1000,
  config = function()
    require("meow").setup()
    vim.cmd.colorscheme("meow")
  end,
}
```

Useful diagnostic commands inside Neovim:

```vim
:Inspect                   " show highlight group under cursor
:lua =require("meow").get_colors()        " dump the full palette
:source $VIMRUNTIME/syntax/hitest.vim     " all highlight groups at once
```

## License

MIT — see [LICENSE.md](LICENSE.md)

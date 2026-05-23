-- NvChad base46 theme definition for meow.nvim
-- NvChad loads this via require("themes.meow") when base46.theme = "meow"

local M = {}

M.base_30 = {
  white         = "#B6BBC4",
  darker_black  = "#060914", -- sidebar / panel bg
  black         = "#03040f", -- editor bg
  black2        = "#07091a",
  one_bg        = "#0D1321", -- cursorline
  one_bg2       = "#111828",
  one_bg3       = "#152030",
  grey          = "#5A5C62",
  grey_fg       = "#6E7490",
  grey_fg2      = "#7C8090",
  light_grey    = "#8E9099",
  red           = "#FE5D9F",
  baby_pink     = "#ff6188",
  pink          = "#ff6188",
  line          = "#313450", -- popup border / separator
  green         = "#98c379",
  vibrant_green = "#84A98C",
  nord_blue     = "#3dc2ec",
  blue          = "#56B6C2",
  yellow        = "#ECB365",
  sun           = "#E5C07B",
  purple        = "#9B84E3",
  dark_purple   = "#6A6FC3",
  teal          = "#4CC9F0",
  orange        = "#FF9E64",
  cyan          = "#3dc2ec",
  statusline_bg = "#03040f",
  lightbg       = "#0D1321",
  pmenu_bg      = "#ff6188",
  folder_bg     = "#3dc2ec",
}

M.base_16 = {
  base00 = "#03040f", -- bg
  base01 = "#060914", -- sidebar_bg
  base02 = "#1E2840", -- selection
  base03 = "#6E7490", -- comment
  base04 = "#5A5C62", -- line_nr
  base05 = "#B6BBC4", -- fg
  base06 = "#C6CCD5",
  base07 = "#D6DCE5",
  base08 = "#ff6188", -- keyword / accent (BRAND)
  base09 = "#E5C07B", -- number / boolean
  base0A = "#ECB365", -- constant
  base0B = "#98c379", -- string (BRAND)
  base0C = "#4CC9F0", -- info / escape sequences
  base0D = "#3dc2ec", -- function name (BRAND)
  base0E = "#9B84E3", -- property / special
  base0F = "#FF9E64", -- function call / embedded
}

M.type = "dark"

return M

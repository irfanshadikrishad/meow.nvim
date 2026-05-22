-- nvim-tree.lua highlights
-- https://github.com/nvim-tree/nvim-tree.lua

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  -- Base window
  hl("NvimTreeNormal",          { fg = colors.fg,         bg = colors.sidebar_bg })
  hl("NvimTreeNormalNC",        { fg = colors.fg,         bg = colors.sidebar_bg })
  hl("NvimTreeNormalFloat",     { fg = colors.fg,         bg = colors.popup_bg })
  hl("NvimTreeEndOfBuffer",     { fg = colors.sidebar_bg, bg = colors.sidebar_bg })
  hl("NvimTreeCursorLine",      { bg = colors.cursor_line })
  hl("NvimTreeCursorColumn",    { bg = colors.cursor_line })
  hl("NvimTreeLineNr",          { fg = colors.line_nr,    bg = colors.sidebar_bg })
  hl("NvimTreeStatuslineNc",    { fg = colors.sidebar_bg, bg = colors.sidebar_bg })
  hl("NvimTreeSignColumn",      { fg = colors.sidebar_bg, bg = colors.sidebar_bg })
  hl("NvimTreeWinSeparator",    { fg = colors.sidebar_bg, bg = colors.sidebar_bg })
  hl("NvimTreeVertSplit",       { fg = colors.sidebar_bg, bg = colors.sidebar_bg })
  hl("NvimTreePopup",           { fg = colors.fg,      bg = colors.popup_bg })
  hl("NvimTreeWindowPicker",    { fg = colors.bg,      bg = colors.keyword, bold = true })

  -- Folders
  hl("NvimTreeRootFolder",         { fg = colors.keyword,       bold = true })
  hl("NvimTreeFolderName",         { fg = colors.fg })
  hl("NvimTreeFolderIcon",         { fg = colors.function_name })
  hl("NvimTreeOpenedFolderName",   { fg = colors.fg })
  hl("NvimTreeOpenedFolderIcon",   { fg = colors.function_name })
  hl("NvimTreeEmptyFolderName",    { fg = colors.comment })
  hl("NvimTreeEmptyFolderIcon",    { fg = colors.comment })
  hl("NvimTreeSymlinkFolderName",  { fg = colors.type })
  hl("NvimTreeIndentMarker",       { fg = colors.line_nr })

  -- Files
  hl("NvimTreeSymlink",            { fg = colors.type,     underline = true })
  hl("NvimTreeSymlinkIcon",        { fg = colors.type })
  hl("NvimTreeExecFile",           { fg = colors.function_name })
  hl("NvimTreeSpecialFile",        { fg = colors.constant, underline = true })
  hl("NvimTreeImageFile",          { fg = colors.property })
  hl("NvimTreeHidden",             { fg = colors.comment })
  hl("NvimTreeModifiedFile",       { fg = colors.git_change })
  hl("NvimTreeBookmark",           { fg = colors.keyword })
  hl("NvimTreeLiveFilterPrefix",   { fg = colors.keyword,  bold = true })
  hl("NvimTreeLiveFilterValue",    { fg = colors.fg })

  -- Git decorators
  hl("NvimTreeGitDirty",           { fg = colors.git_change })
  hl("NvimTreeGitStaged",          { fg = colors.git_add })
  hl("NvimTreeGitMerge",           { fg = colors.warning })
  hl("NvimTreeGitRenamed",         { fg = colors.git_change })
  hl("NvimTreeGitNew",             { fg = colors.git_add })
  hl("NvimTreeGitDeleted",         { fg = colors.git_delete })
  hl("NvimTreeGitIgnored",         { fg = colors.comment })
  hl("NvimTreeGitUntracked",       { fg = colors.warning })
end

return M

-- floaterm (NvChad/floaterm + volt) highlights
-- Overrides the ex* groups that volt defines from base46 colors.
-- ExRed drives the bar border + time indicator; toning it down removes the
-- hot-pink dashed separator line.

local M = {}

local function hl(group, attrs)
  vim.api.nvim_set_hl(0, group, attrs)
end

function M.setup(colors, _)
  -- Panel / window backgrounds
  -- ExDarkBg is used for the sidebar and terminal windows; match editor bg so
  -- the panel doesn't show a blue-tinted navy stripe against the near-black editor.
  hl("ExDarkBg",     { bg = colors.bg })
  hl("ExDarkBorder", { bg = colors.bg, fg = colors.bg })

  hl("ExBlack2Bg",     { bg = colors.cursor_line })
  hl("ExBlack2border", { bg = colors.cursor_line, fg = colors.cursor_line })

  hl("ExBlack3Bg",     { bg = colors.selection })
  hl("ExBlack3Border", { bg = colors.selection, fg = colors.selection })

  -- Status accents
  -- ExRed drives the bar window border AND the time indicator; use info teal
  -- so the separator blends rather than screaming pink.
  hl("ExRed",    { fg = colors.info })
  hl("ExGreen",  { fg = colors.git_add })
  hl("ExYellow", { fg = colors.constant })
  hl("ExBlue",   { fg = colors.function_name })

  -- FloatSpecialBorder: the ‾ separator row between title bar and terminal.
  -- fg is normally ExRed (hot pink); make it popup_border for a subtle line.
  hl("FloatSpecialBorder", { bg = colors.bg, fg = colors.popup_border })

  -- CommentFg used by volt for secondary / dimmed labels
  hl("CommentFg", { fg = colors.comment })
end

return M

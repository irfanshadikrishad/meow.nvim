vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("g:syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "meow"

require("meow").setup()

-- Re-apply after any framework (e.g. NvChad base46) that listens to
-- ColorScheme and overwrites highlights on the same tick.
vim.schedule(function()
  if vim.g.colors_name == "meow" then
    require("meow").setup()
  end
end)

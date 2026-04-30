-- Legacy Vim compatibility

vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "meow"

-- Load the theme
require("meow").setup()

-- ~/workshop/meow.nvim/after/plugin/meow.lua
-- LazyVim specific configurations

if not pcall(require, "lazyvim") then
	return
end

-- Apply theme options when active under LazyVim
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "meow",
	callback = function()
		require("meow").setup({
			transparent = vim.g.lazyvim_transparent or false,
			italic_comments = true,
			bold_keywords = false,
		})
	end,
})

-- LazyVim compat: respect vim.g.lazyvim_transparent when active.
if not vim.g.lazyvim_version then
	return
end

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "meow",
	callback = function()
		if vim.g.colors_name ~= "meow" then
			return
		end
		require("meow").setup({
			transparent = vim.g.lazyvim_transparent == 1,
		})
	end,
})

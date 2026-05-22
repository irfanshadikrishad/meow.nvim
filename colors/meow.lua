vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("g:syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "meow"

require("meow").reload()

-- NvChad base46 defers its highlight reload via vim.schedule inside its
-- ColorScheme autocmd.  A single vim.schedule (queued before ColorScheme
-- fires) would run *before* base46 finishes.  Double-schedule guarantees
-- we land one tick after base46's deferred pass.
vim.schedule(function()
  vim.schedule(function()
    if vim.g.colors_name == "meow" then
      require("meow").reload()
    end
  end)
end)

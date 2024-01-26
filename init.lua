-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Mason

require("mason").setup()

-- COQ
-- TODO make COQ start on first keypress

-- Theme
vim.cmd[[colorscheme tokyonight-moon]]

-- Vim Options
vim.opt.relativenumber = true
vim.opt.shiftwidth = 0
vim.opt.tabstop = 4
vim.opt.listchars = { space = "•", tab = "→ "}
vim.opt.list = true

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

-- Theme
vim.cmd[[colorscheme tokyonight-moon]]

-- Vim Options
vim.opt.relativenumber = true
vim.opt.shiftwidth = 0
vim.opt.tabstop = 4
vim.opt.listchars = { space = "•", tab = "→ "}
vim.opt.list = true
vim.opt.showmode = false

-- COQ
-- TODO make in a different file


local lsp = require("lspconfig")
local coq = require("coq")

lsp.clangd.setup(coq.lsp_ensure_capabilities())
lsp.cssls.setup(coq.lsp_ensure_capabilities())
lsp.lua_ls.setup(coq.lsp_ensure_capabilities({
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
}))
lsp.pylsp.setup(coq.lsp_ensure_capabilities())
lsp.rust_analyzer.setup(coq.lsp_ensure_capabilities())

vim.cmd("COQnow --shut-up")

-- Wind Line

require('wlsample.airline')

-- Copilot
-- TODO Make tab work

require('copilot').setup({
	suggestion = {
		enabled = true,
		auto_trigger = true,
		debounce = 75,
		keymap = {
			accept = "<M-l>",
			accept_word = false,
			accept_line = false,
			next = "<M-]>",
			prev = "<M-[>",
			dismiss = "<C-]>",
		},
	},
	copilot_node_command = 'node', -- Node.js version must be > 18.x
	server_opts_overrides = {},
})

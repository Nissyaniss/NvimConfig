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
-- TODO make in a different file

local lsp = require("lspconfig")
local coq = require("coq")

lsp.clangd.setup(coq.lsp_ensure_capabilities())
lsp.cssls.setup(coq.lsp_ensure_capabilities())
lsp.lua_ls.setup(coq.lsp_ensure_capabilities())
lsp.pylsp.setup(coq.lsp_ensure_capabilities())
lsp.rust_analyzer.setup(coq.lsp_ensure_capabilities())

require("coq_3p"){
--	{ src = "copilot", short_name = "COP", accept_key = "<c-f>" }
}

vim.cmd("COQnow --shut-up")

-- Lua Line
-- TODO Configure this

require('lualine').setup()

-- Copilot
-- TODO MAKE IT WORK

vim.keymap.set('i', '<Tab>', function()
	if require("copilot.suggestion").is_visible() then
		require("copilot.suggestion").accept()
	else
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
	end
end, { desc = "Super Tab" })


require('copilot').setup({
	suggestion = {
		enabled = true,
		auto_trigger = true,
		debounce = 75,
		keymap = {
			accept = "<Tab>",
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



-- Theme
vim.cmd[[colorscheme tokyonight-moon]]

-- Vim Options
vim.opt.relativenumber = true
vim.opt.shiftwidth = 0
vim.opt.tabstop = 4
vim.opt.listchars = { space = "•", tab = "→ "}
vim.opt.list = true

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

require("coq_3p") {
	{ src = "nvimlua", short_name = "nLUA" },
	{ src = "copilot", short_name = "COP", accept_key = "<c-f>" },
	{ src = "figlet", short_name = "BIG" }
}

vim.cmd("COQnow --shut-up")

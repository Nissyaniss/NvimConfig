require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		'bashls',
		'clangd',
		'cssls',
		'jdtls',
		'lua_ls',
		'pylsp',
		'r_language_server',
		'rust_analyzer',
	}
})

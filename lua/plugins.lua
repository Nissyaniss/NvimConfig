return {
	"folke/which-key.nvim",
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	"nvim-tree/nvim-tree.lua",
	'nvim-tree/nvim-web-devicons',
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"mfussenegger/nvim-lint",
	"ms-jpq/coq_nvim",
	"ms-jpq/coq.thirdparty",
	"ms-jpq/coq.artifacts",
	"romgrk/barbar.nvim",
	"zbirenbaum/copilot.lua",
	"windwp/windline.nvim",
	-- TODO Verify if it work with my machine || NEEDS NODE + YARN
	{
	"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	"RRethy/vim-illuminate",
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
			}
		end,
		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	{'akinsho/toggleterm.nvim', version = "*", config = true},
}

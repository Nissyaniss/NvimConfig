return {
	"folke/which-key.nvim",
	"nvim-tree/nvim-tree.lua",
	'nvim-tree/nvim-web-devicons',
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"mfussenegger/nvim-lint",
	"ms-jpq/coq_nvim",
	"ms-jpq/coq.thirdparty",
	"ms-jpq/coq.artifacts",
	"romgrk/barbar.nvim",
	--"zbirenbaum/copilot.lua",
	"Exafunction/codeium.vim",
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
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = true
	},
	"NvChad/nvim-colorizer.lua",
	"lewis6991/gitsigns.nvim",
	{
		"askfiy/visual_studio_code",
		priority = 100,
		config = function()
			vim.cmd([[colorscheme visual_studio_code]])
		end,
	},
	{
		'altermo/ultimate-autopair.nvim',
		event={'InsertEnter','CmdlineEnter'},
		branch='v0.6', --recomended as each new version will have breaking changes
		opts={
			--Config goes here
		},
	}
}

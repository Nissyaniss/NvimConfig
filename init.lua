vim.g.mapleader = ' '

require("conf.Lazy")
require("mason").setup()
require("wlsample.airline")
require("gitsigns").setup()
require("Keybinds")
require("conf.Vim")
require("conf.Dashboard")
require("conf.NvimTree")
require("conf.Lsp+Comp")
require("conf.Treesitter")

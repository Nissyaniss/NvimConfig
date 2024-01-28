vim.g.mapleader = ' '

require("pluginsConfs.LazyConf")
require("mason").setup()
vim.cmd[[colorscheme tokyonight-moon]]
require("conf.Vim")
require("keybinds")
require("pluginsConfs.LspCoqConf")
require("wlsample.airline")
require("pluginsConfs.dashboardConf")
require("pluginsConfs.CopilotConf")
require("pluginsConfs.NvimTreeConf")

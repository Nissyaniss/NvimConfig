vim.g.mapleader = ' '

require("pluginsConfs.LazyConf")

require("mason").setup()
require("conf.Vim")
require("keybinds")
require("pluginsConfs.LspCoqConf")
require("wlsample.airline")
require("pluginsConfs.dashboardConf")
--require("pluginsConfs.CopilotConf")
require('gitsigns').setup()
--require("pluginsConfs.AutoPairsConf")
require("pluginsConfs.NvimTreeConf")

-- TODO make tab work for codeium (set <M-l> for the time being), spellchecker, SOLVE FUCKIN NVIM TREE OR CHANGE THE PLUGIN

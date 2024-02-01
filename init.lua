vim.g.mapleader = ' '

require("pluginsConfs.LazyConf")
require("mason").setup()
require("conf.Vim")
require("keybinds")
require("wlsample.airline")
require("pluginsConfs.dashboardConf")
--require("pluginsConfs.CodeiumConf")
require('gitsigns').setup()
--require("pluginsConfs.AutoPairsConf")
require("pluginsConfs.NvimTreeConf")
require("pluginsConfs.LspCocConf")

-- TODO make tab work for codeium (set <M-l> for the time being), spellchecker

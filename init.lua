vim.g.mapleader = ' '

require("pluginsConfs.LazyConf")
require("mason").setup()
require("conf.Vim")
require("keybinds")
require("wlsample.airline")
require("pluginsConfs.dashboardConf")
require('gitsigns').setup()
require("pluginsConfs.NvimTreeConf")
require("pluginsConfs.LspCocConf")

-- TODO: add fav (ex : cours etc)

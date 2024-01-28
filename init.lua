vim.g.mapleader = ' '

require("plugins.LazyConf")
require("mason").setup()
vim.cmd[[colorscheme tokyonight-moon]]
require("conf.Vim")
require("lua.keybinds")
require("plugins.LspCoqConf")
require("wlsample.airline")
require("plugins.dashboardConf")
require("plugins.CopilotConf")
require("plugins.NvimTreeConf")
-- TODO Make tab work

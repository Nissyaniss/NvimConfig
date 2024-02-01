vim.g.mapleader = ' '

local test = pcall(vim.api.nvim_echo, {{vim.v.argv[3], 'None'}, {'', 'None'}, false, {}})
vim.api.nvim_echo({{test, 'None'}, {'test', 'None'}}, false, {})
vim.api.nvim_echo({{'test', 'None'}, {'', 'None'}}, false, {})
if vim.v.argv == 1
then
	vim.api.nvim_echo({{'first chunk and ', 'None'}, {'second chunk to echo', 'None'}}, false, {})
	require("nvim-tree.api").tree.toggle({path = "<args>", focus = false})
end

require("pluginsConfs.LazyConf")
require("mason").setup()
require("conf.Vim")
require("keybinds")
require("pluginsConfs.LspCoqConf")
require("wlsample.airline")
require("pluginsConfs.dashboardConf")
--require("pluginsConfs.CopilotConf")
require("pluginsConfs.NvimTreeConf")
require('gitsigns').setup()
--require("pluginsConfs.AutoPairsConf")

-- TODO make tab work for codeium (set <M-l> for the time being), spellchecker, SOLVE FUCKIN NVIM TREE OR CHANGE THE PLUGIN

vim.g.mapleader = ' '

require("pluginsConfs.LazyConf")
require("mason").setup()
require("conf.Vim")
require("keybinds")
require("pluginsConfs.LspCoqConf")
require("wlsample.airline")
require("windline.components.cava").toggle()
require("pluginsConfs.dashboardConf")
--require("pluginsConfs.CopilotConf")
require("pluginsConfs.NvimTreeConf")
require('gitsigns').setup()
require("autoclose").setup({
   keys = {
      ["("] = { escape = false, close = true, pair = "()" },
      ["["] = { escape = false, close = true, pair = "[]" },
      ["{"] = { escape = false, close = true, pair = "{}" },

      [">"] = { escape = true, close = false, pair = "<>" },
      [")"] = { escape = true, close = false, pair = "()" },
      ["]"] = { escape = true, close = false, pair = "[]" },
      ["}"] = { escape = true, close = false, pair = "{}" },

      ['"'] = { escape = true, close = true, pair = '""' },
      ["'"] = { escape = true, close = true, pair = "''" },
      ["`"] = { escape = true, close = true, pair = "``" },
   },
   options = {
      disabled_filetypes = { "text", "markdown" },
      disable_when_touch = false,
      touch_regex = "[%w(%[{]",
      pair_spaces = false,
      auto_indent = true,
      disable_command_mode = false,
   },
})

-- TODO make tab work for codeium (set <M-l> for the time being), spellchecker, SOLVE FUCKIN NVIM TREE OR CHANGE THE PLUGIN

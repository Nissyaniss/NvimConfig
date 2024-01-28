-- TODO Make tab work

require('copilot').setup({
	suggestion = {
		enabled = true,
		auto_trigger = true,
		debounce = 75,
		keymap = {
			accept = "<M-l>",
			accept_word = false,
			accept_line = false,
			next = "<M-]>",
			prev = "<M-[>",
			dismiss = "<C-]>",
		},
	},
	copilot_node_command = 'node', -- Node.js version must be > 18.x
	server_opts_overrides = {},
})

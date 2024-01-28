local db = require("dashboard")

db.setup({
	theme = 'hyper',
	config = {
		header = {
			"",
			"",
			"",
			"",
			"   _____ __    _ __ _    ___         ",
			"  / ___// /_  (_) /| |  / (_)___ ___ ",
			" \\__  / __  / / __/ | / / / __ `__ ",
			" ___/ / / / / / /_ | |/ / / / / / / /",
			"/____/_/ /_/_/\\__/ |___/_/_/ /_/ /_/ ",
			"",
			"",
			"",
		},
		shortcut = {
			{ desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
			{
				icon = ' ',
				icon_hl = '@variable',
				desc = 'Files',
				group = 'Label',
				action = 'Telescope find_files',
				key = 'f',
			},
		},
		footer = {
			"",
			"Go fuck yourself"
		}
	},
})

return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "MaximilianLloyd/ascii.nvim" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- dashboard.section.header.val = require("ascii").art.text.neovim.sharp
		-- dashboard.section.header.val = {
		-- 	"",
		-- 	"",
		-- 	"",
		-- 	"",
		-- 	"",
		-- 	" ,ggg,         gg                                            ",
		-- 	'dP""Y8a        88                                            ',
		-- 	"Yb, `88        88                                            ",
		-- 	' `"  88        88                                            ',
		-- 	"     88        88                                            ",
		-- 	"     88        88    ,gggg,gg   ,ggg,,ggg,,ggg,     ,gggg,gg ",
		-- 	'     88       ,88   dP"  "Y8I  ,8" "8P" "8P" "8,   dP"  "Y8I ',
		-- 	"     Y8b,___,d888  i8'    ,8I  I8   8I   8I   8I  i8'    ,8I ",
		-- 	'      "Y88888P"88,,d8,   ,d8b,,dP   8I   8I   Yb,,d8,   ,d8b,',
		-- 	'           ,ad8888P"Y8888P"`Y88P\'   8I   8I   `Y8P"Y8888P"`Y8',
		-- 	'          d8P" 88                                            ',
		-- 	"        ,d8'   88                                            ",
		-- 	"        d8'    88                                            ",
		-- 	"        88     88                                            ",
		-- 	"        Y8,_ _,88                                            ",
		-- 	'         "Y888P"                                             ',
		-- }

		-- dashboard.section.header.val = {
		--  	"",
		--  	"",
		--  	"",
		--   "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⠛⠛⢋⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⡟⠻⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⡷⠀⠸⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣧⠀⢰⣿⣿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⡄⢸⣿⣿⣶⣶⣦⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⡇⠸⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⡇⠀⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⠃⠀⠙⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⠏⠁⠈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⠿⣿⣿⣿⡀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⡇⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⠀⢹⣿⣿⣷⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⡇⠀⣇⣀⣤⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣆⠀⢿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⣧⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣇⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⣿⠀⢻⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣷⡀⢠⣤⡄⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⣿⡄⢸⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡇⠸⣿⣷⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⣿⡇⢸⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⠀⢿⣿⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⣿⣿⢸⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣇⠘⣿⡄⠀⠀⠀⠀⠀⢦⣘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⣿⣿⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⡄⢹⡇⠀⠀⠀⣀⣀⡀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⣿⣿⠀⣿⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⡀⢿⣆⠀⢸⣿⣿⣷⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
		--   "⣿⣿⣿⠛⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠴⠛⠿⠃⠈⠛⠀⠀⠛⠛⠻⠃⠀⠘⠛⠛⠛⢿⣿⣿⣿⣿⣿⣿",
		--   "⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢻⣿⣿⣿⣿",
		--   "⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿",
		--   "⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻",
		--  	"",
		--  	"",
		--  	"",
		-- }

		dashboard.section.header.val = {
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
			"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
			"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
			"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
			"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
			"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
			"",
			"",
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", " Find file", ":Telescope find_files <CR>"),
			dashboard.button("e", " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", " Recently used files", ":Telescope oldfiles <CR>"),
			dashboard.button("t", "󱎸 Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", " Configuration", ":e ~/.config/nvim<CR>"),
			dashboard.button("q", "⏻ Quit Neovim", ":qa<CR>"),
		}

		dashboard.section.footer.val = {
			"",
			"",
			"The key to mastery lies not in knowing all the answers",
			"but in the knowing where to seek them.",
		}

		dashboard.section.footer.opts.hl = "@constant"
		dashboard.section.header.opts.hl = "@parameter"
		dashboard.section.buttons.opts.hl = "Keyword"
		dashboard.section.buttons.opts.noautocmd = false

		-- alpha.setup(dashboard.opts)
	end,
}

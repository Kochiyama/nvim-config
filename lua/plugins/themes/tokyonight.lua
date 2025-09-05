return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("tokyonight").setup({
			style = "night",
			light_style = "day",
			transparent = true,
			terminal_colors = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				functions = {},
				variables = {},
				sidebars = "transparent",
				floats = "transparent",
			},
			lualine_bold = true,
			cache = true,
			plugins = {
				all = false,
				auto = true,
			},
			day_brightness = 0.3,
			dim_inactive = false,
			on_colors = function(colors) end,
			on_highlights = function(highlights, colors) end,
		})
	end,
}

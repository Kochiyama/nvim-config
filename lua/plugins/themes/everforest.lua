return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000,
	config = function()
		require("everforest").setup({
			background = "hard",
			transparent_background_level = 0.5,
			italics = true,
			disable_italic_comments = false,
			sign_column_background = "none",
			ui_contrast = "low",
			show_eob = false,
		})
	end,
}

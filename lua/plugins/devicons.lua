return {
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({
				override = {
					toml = {
						icon = "",
						color = "#6e6a86",
						cterm_color = "65",
						name = "toml",
					},
				},
			})
		end,
	},
}

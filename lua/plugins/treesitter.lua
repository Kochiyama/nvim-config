return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			highlight = { enable = true },
			indent = { enable = true },
			auto_tag = { enable = true },
			auto_install = true,
			ensure_installed = { "lua", "javascript", "rust", "json", "prisma", "markdown", "tsx" },
		})
	end,
}

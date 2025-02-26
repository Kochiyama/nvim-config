return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local git_blame = require("gitblame")
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "tokyonight",
				-- component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "󱎕" },
				disabled_filetypes = {
					statusline = {
						"neo-tree",
					},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					"branch",
					"diff",
					"diagnostics",
				},
				lualine_c = {
					{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
				},
				lualine_x = {
					"location",
				},
				lualine_y = { "filetype" },
				lualine_z = { { "filename", path = 1 } },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}

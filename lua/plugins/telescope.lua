return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				defaults = {
					layout_config = {
						vertical = { width = 0.5 },
					},
					file_ignore_patterns = { "%.git/", "%node_modules/", "%.next/" },
				},
				pickers = {
					find_files = {
						hidden = true,
					},
				},
			})

			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>ts", builtin.colorscheme, { desc = "Theme Select" })
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search for Files" })
			vim.keymap.set("n", "<leader>st", builtin.live_grep, { desc = "Search for Text" })
			vim.keymap.set("n", "<leader>bb", builtin.buffers, { desc = "Buffers" })
			vim.keymap.set(
				"n",
				"<leader>sp",
				":lua require'telescope'.extensions.project.project{}<CR>",
				{ desc = "Projects" }
			)
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "Diagnostics" })
			vim.keymap.set("n", "<leader>ss", builtin.resume, { desc = "Resume Search" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-project.nvim",
		config = function()
			require("telescope").load_extension("project")
		end,
	},
}

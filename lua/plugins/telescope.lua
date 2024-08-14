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
				},
			})

			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>st", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>bb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>sp", ":lua require'telescope'.extensions.project.project{}<CR>", {})
      vim.keymap.set("n", "<leader>sd", builtin.diagnostics, {})
      vim.keymap.set("n", "<leader>ss", builtin.resume, {})
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

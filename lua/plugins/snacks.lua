return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		local snacks = require("snacks")
		snacks.setup({
			bigfile = {
				notify = true,
				enabled = true,
			},
			bufdelete = { enabled = true },
			dashboard = { enabled = true },
			explorer = { enabled = true },
			dim = {
				enabled = true,
				scope = {
					min_size = 1,
					max_size = 5,
					siblings = false,
				},
				animate = {
					enabled = false,
					easing = "outQuad",
					duration = {
						step = 20,
						total = 300,
					},
				},
			},
			scroll = {
				enabled = true,
				animate = {},
			},
			animate = {
				enabled = true,
				duration = 50,
				fps = 60,
				easing = "linear",
			},
			input = {
				enabled = true,
			},
			lazygit = {
				enabled = true,
				configure = true,
			},
			notifier = {
				enabled = true,
			},
			statuscolumn = {
				enabled = true,
				folds = {
					open = true, -- show open fold icons
					git_hl = true, -- use Git Signs hl for fold icons
				},
			},
			toggle = {
				enabled = true,
				which_key = true,
			},
		})

		-- Buffer Delete
		vim.keymap.set("n", "<leader>bcc", snacks.bufdelete.delete, { desc = "Close Buffer" })
		vim.keymap.set("n", "<leader>bca", snacks.bufdelete.all, { desc = "Close All Buffers" })
		vim.keymap.set("n", "<leader>bco", snacks.bufdelete.other, { desc = "Close All Other Buffers" })

		-- Dim
		vim.keymap.set("n", "<leader>sde", snacks.dim.enable, { desc = "Enable Dim" })
		vim.keymap.set("n", "<leader>sdd", snacks.dim.disable, { desc = "Disable Dim" })

		-- Notifications
		vim.keymap.set("n", "<leader>nc", snacks.notifier.hide, { desc = "Clear Notifications" })
		vim.keymap.set("n", "<leader>nh", snacks.notifier.show_history, { desc = "Show Notifications" })
	end,
}

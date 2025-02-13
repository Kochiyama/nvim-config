return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	config = function()
		local conform = require("conform")

		local biomePrettier = { "biome", "prettier", stop_after_first = true }

		conform.setup({
			formatters = {
				biome = {
					require_cwd = true,
					args = { "check", "--fix", "--unsafe", "--stdin-file-path", "$FILENAME" },
				},
				prettier = {
					require_cwd = true,
				},
			},
			formatters_by_ft = {
				javascript = biomePrettier,
				typescript = biomePrettier,
				javascriptreact = biomePrettier,
				typescriptreact = biomePrettier,
				css = biomePrettier,
				html = biomePrettier,
				json = biomePrettier,
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>lf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}

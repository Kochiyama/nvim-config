return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local mason_lspconfig = require("mason-lspconfig")

		capabilities.textDocument.completion.completionItem.snippetSupport = true

		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		-- mason_lspconfig.setup_handlers({
		-- 	function(server_name)
		-- 		lspconfig[server_name].setup({
		-- 			capabilities = capabilities,
		-- 		})
		-- 	end,
		-- 	["eslint"] = function()
		-- 		lspconfig.eslint.setup({
		-- 			capabilities = capabilities,
		-- 			root_dir = lspconfig.util.root_pattern(
		-- 				"eslint.config.js",
		-- 				"eslint.config.ts",
		-- 				".eslintrc",
		-- 				".eslintrc.js",
		-- 				".eslintrc.cjs",
		-- 				".eslintrc.yaml",
		-- 				".eslintrc.yml",
		-- 				".eslintrc.json"
		-- 			),
		-- 			filetypes = {
		-- 				-- Default filetypes
		-- 				"javascript",
		-- 				"javascriptreact",
		-- 				"javascript.jsx",
		-- 				"typescript",
		-- 				"typescriptreact",
		-- 				"typescript.tsx",
		-- 				"vue",
		-- 				"svelte",
		-- 				"astro",
		-- 				-- Additional filetypes
		-- 				"css",
		-- 				"markdown",
		-- 				"json",
		-- 			},
		-- 			single_file_support = true,
		-- 		})
		-- 	end,
		-- 	["biome"] = function()
		-- 		lspconfig.biome.setup({
		-- 			capabilities = capabilities,
		-- 			root_dir = lspconfig.util.root_pattern("biome.json"),
		-- 			single_file_support = false,
		-- 		})
		-- 	end,
		-- 	["denols"] = function()
		-- 		lspconfig.denols.setup({
		-- 			capabilities = capabilities,
		-- 			root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
		-- 			single_file_support = false,
		-- 		})
		-- 	end,
		-- 	["emmet_ls"] = function()
		-- 		lspconfig.emmet_ls.setup({
		-- 			capabilities = capabilities,
		-- 			filetypes = {
		-- 				"css",
		-- 				"eruby",
		-- 				"html",
		-- 				"javascript",
		-- 				"javascriptreact",
		-- 				"less",
		-- 				"sass",
		-- 				"scss",
		-- 				"svelte",
		-- 				"pug",
		-- 				"typescriptreact",
		-- 				"vue",
		-- 			},
		-- 			init_options = {
		-- 				html = {
		-- 					options = {
		-- 						-- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
		-- 						["bem.enabled"] = true,
		-- 					},
		-- 				},
		-- 			},
		-- 		})
		-- 	end,
		-- })

		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Info" })
		vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
		vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "Code Actions" })
	end,
}

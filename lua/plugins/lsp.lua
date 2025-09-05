return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		-- Enable snippet support in completion capabilities
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"prismals",
				"vtsls",
				"html",
				"cssls",
				"tailwindcss",
				"denols",
				"eslint",
				"rust_analyzer",
				"dockerls",
				"docker_compose_language_service",
				"taplo",
				"yamlls",
				"gopls",
				"pyright",
				"sqlls",
				"marksman",
				"emmet_ls",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({ capabilities = capabilities })
				end,
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"eslint_d",
				"biome",
				"prettier",
			},
		})

		local lspconfig_util = require("lspconfig.util")

		vim.lsp.config("eslint", {
			filetypes = {
				"javascript",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescriptreact",
				"typescript.tsx",
				"vue",
				"svelte",
				"astro",
				"css",
				"markdown",
				"json",
			},
			root_dir = lspconfig_util.root_pattern(
				"eslint.config.js",
				"eslint.config.ts",
				".eslintrc",
				".eslintrc.js",
				".eslintrc.cjs",
				".eslintrc.yaml",
				".eslintrc.yml",
				".eslintrc.json"
			),
		})

		vim.lsp.config("biome", {
			root_dir = require("lspconfig.util").root_pattern(
				"biome.json",
				".biome.json",
				"biome.jsonc",
				".biome.jsonc"
			),
		})

		vim.lsp.config("denols", {
			root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc"),
		})

		vim.lsp.config("vtsls", {
			root_dir = require("lspconfig.util").root_pattern("tsconfig.json"),
		})
	end,
}

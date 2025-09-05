return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

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
	end,
}

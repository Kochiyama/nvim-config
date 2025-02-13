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

		-- Ensure Language Server Protocols are installed
		mason_lspconfig.setup({
			ensure_installed = {
				-- Lua
				"lua_ls",

				-- Web
				"prismals",
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",

				-- Rust
				"rust_analyzer",

				-- Docker
				"dockerls",
				"docker_compose_language_service",

				-- General
				"taplo",
				"yamlls",
				"gopls",
				"pyright",
				"sqlls",
				"marksman",
				"emmet_ls",
			},
		})

		-- Ensure tools are installed
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				"eslint_d",
				"biome",
				"rust_fmt",
			},
		})
	end,
}

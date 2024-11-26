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
				"clangd", -- C / C++
				"cssls", -- CSS
				"html", -- HTML
				"jdtls", -- Java
				"ts_ls", -- JavaScript / TypeScript
				"eslint", -- JavaScript / TypeScript
				"jsonls", -- JSON
				"lua_ls", -- Lua
				"marksman", -- Markdown
				"pyright", -- Python
				"rust_analyzer", -- Rust
				"sqlls", -- SQL
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				-- formatters
				"clang-format",
				"prettier",
				"google-java-format",
				"stylua",
				"isort",
				"black",
				"sql-formatter",

				-- linters
				"stylelint",
				"htmlhint",
				"eslint_d",
				"flake8",
				"sqlfluff",
			},
		})
	end,
}

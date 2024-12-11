-- This file contains all the configuration needed to manage and use language servers !
-- We need 3 plugins:
-- 1) mason -> makes it easy to install and manage multiple LSP
-- 2) mason-lsp-config -> helps the other two work togheter
-- 3) nvim-lsp-config -> allows neovim to communicate with the language server
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- list the LSP that you need
				ensure_installed = {
					"lua_ls", -- Lua
					"clangd", -- C
					"ts_ls" -- Typescript
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities();
			local lspconfig = require("lspconfig")

			-- LUA language
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})

			-- C language
			lspconfig.clangd.setup({
				capabilities = capabilities
			})

			-- Typescript
			lspconfig.ts_ls.setup({
			})
		end
	}
}

local lspconfig = require("lspconfig")

-- Custom border style (compatible format with highlight group)
local border = {
	{ "╭", "FloatBorder" },
	{ "─", "FloatBorder" },
	{ "╮", "FloatBorder" },
	{ "│", "FloatBorder" },
	{ "╯", "FloatBorder" },
	{ "─", "FloatBorder" },
	{ "╰", "FloatBorder" },
	{ "│", "FloatBorder" },
}

-- Override default handlers to use custom borders
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border })

-- Set up lua_ls with default capabilities
lspconfig.lua_ls.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				checkThirdParty = false,  -- Removes annoying third-party workspace warnings
				library = {
					vim.env.VIMRUNTIME,
					"${3rd}/luv/library",
				},
			},
			telemetry = { enable = false },
		}
	},
}

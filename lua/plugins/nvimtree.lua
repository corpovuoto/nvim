return {
	'nvim-tree/nvim-tree.lua',
	dependencies = {
		'nvim-tree/nvim-web-devicons', -- optional, for file icons
	},
	config = function()
		require('nvim-tree').setup({
			view = {
				width = 30,
				float = {
					enable = true,
				},
			},
			renderer = {
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
				},
			},
		})
	end,
	on_attach = function(bufnr)
		local api = require "nvim-tree.api"

		local function opts(desc)
			return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = false, nowait = true }
		end

		-- default mappings
		api.config.mappings.default_on_attach(bufnr)

		-- custom mappings
		vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
		vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
	end
}

vim.o.termguicolors = true
--vim.cmd("colorscheme sunbather")
vim.api.nvim_set_hl(0, "RenderMarkdownCode", {bg = "#a494d4", fg = "#000000"})
vim.o.foldmethod = 'expr'
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldenable = true         -- Start with folds enabled
vim.o.foldlevel = 99            -- Prevent everything from folding by default

function GetOS()
	return package.config:sub(1, 1) == "\\" and "win" or "unix"
end

-- vim.api.nvim_create_autocmd("VimEnter", {
-- 	callback = function()
-- 		if vim.fn.argc() == 0 then
-- 			vim.cmd("cd ~/dev")
-- 		end
-- 	end
-- })

vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.tabstop = 4    -- Number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 4 -- Number of spaces used for autoindent

vim.cmd(":set relativenumber")
vim.cmd(":set number")

-- Set tab behavior for Haskell files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "haskell",
	callback = function()
		vim.bo.expandtab = true -- Use spaces instead of tabs
		vim.bo.shiftwidth = 2 -- Indentation width
		vim.bo.tabstop = 2  -- Number of spaces for a tab
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "nim",
	callback = function()
		vim.bo.expandtab = true -- Use spaces instead of tabs
		vim.bo.shiftwidth = 2 -- Indentation width
		vim.bo.tabstop = 2  -- Number of spaces for a tab
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	callback = function()
		vim.bo.expandtab = true -- Use spaces instead of tabs
		vim.bo.shiftwidth = 2 -- Indentation width
		vim.bo.tabstop = 2  -- Number of spaces for a tab
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "c",
	callback = function()
		vim.bo.expandtab = true -- Use spaces instead of tabs
		vim.bo.shiftwidth = 4 -- Indentation width
		vim.bo.tabstop = 4  -- Number of spaces for a tab
	end
})

require("config")

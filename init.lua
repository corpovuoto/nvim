vim.cmd("colorscheme elflord")

require("config")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd("cd ~/dev")
    end
  end
})
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.tabstop = 2       -- Number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 2    -- Number of spaces used for autoindent
vim.cmd(":set relativenumber")

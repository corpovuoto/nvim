local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>e", ":Ex<CR>", opts)
map("n", "<leader>tn", ":tabnew<CR>", opts)
map("n", "<leader>tq", ":tabclose<CR>", opts)
map("n", "<leader>c", ":e ~/AppData/Local/nvim/lua<CR>", opts)





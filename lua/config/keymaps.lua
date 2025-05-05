

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")
vim.keymap.set("n", "<leader>C", ":e ~/AppData/Local/nvim/lua<CR>")
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })

-- Move between splits easily
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Move lines up/down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- Keep cursor centered when searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')


-- Format document 'mf' -> 'modify format'
vim.keymap.set("n", "<leader>mf", "ggVG=", {})


-- Auto close perenthesis etc
vim.keymap.set("i", "(", "()<Left>", {})
vim.keymap.set("i", "[", "[]<Left>", {})
vim.keymap.set("i", "{", "{}<Left>", {})
vim.keymap.set("i", "\"", "\"\"<Left>", {})
vim.keymap.set("i", "'", "''<Left>", {})

-- set visual block mode to Alt-v
vim.keymap.set("n", "<M-v>", "<C-v>")

-- set <C-[hjkl]> in i mode to move cursor
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<Right>')

-- WhichKey shortcut
vim.keymap.set('n', '<leader>wk', ':WhichKey<CR>')


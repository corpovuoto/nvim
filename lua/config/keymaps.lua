local os = GetOS()

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")
if os == "win" then
	vim.keymap.set("n", "<leader>C", ":e ~/AppData/Local/nvim<CR>")
else
	vim.keymap.set("n", "<leader>C", ":e ~/.config/nvim<CR>")
end
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
-- vim.keymap.set("n", "<leader>mf", "ggVG=", {})

-- Auto close perenthesis etc
vim.keymap.set("i", "(", "()<Left>", {})
vim.keymap.set("i", "[", "[]<Left>", {})
vim.keymap.set("i", "{", "{}<Left>", {})
vim.keymap.set("i", "\"", "\"\"<Left>", {})
vim.keymap.set("i", "'", "''<Left>", {})

-- set visual block mode to Alt-v
vim.keymap.set("n", "<M-v>", "<C-v>")

-- WhichKey shortcut
vim.keymap.set('n', '<leader>wk', ':WhichKey<CR>')

-- switch all tabs with spaces
vim.keymap.set("n", "<leader>st", ":%s/\t/    /g<CR>", {desc = "switch tabs to spaces"})

-- remove highlits with esc
vim.keymap.set("n", "<Esc>", ":noh<CR>", {})

vim.keymap.set("n", "<leader>mf", "ggVG=<CR>")

vim.keymap.set("v", "a'", "c'<Esc>pa'<Esc>")
vim.keymap.set("v", "a\"", "c\"<Esc>pa\"<Esc>")
vim.keymap.set("v", "a`", "c`<Esc>pa`<Esc>")
vim.keymap.set("v", "a(", "c(<Esc>pa)<Esc>")
vim.keymap.set("v", "a[", "c[<Esc>pa]<Esc>")
vim.keymap.set("v", "a{", "c{<Esc>pa}<Esc>")


vim.cmd(":tnoremap <Esc> <C-\\><C-n>")

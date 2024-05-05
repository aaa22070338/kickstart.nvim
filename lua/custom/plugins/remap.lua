vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', '"_dP')

vim.keymap.set('n', '<C-Up>', [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set('n', '<C-Down>', [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
vim.keymap.set('n', '<C-Right>', [[<cmd>vertical resize +2<cr>]])
vim.keymap.set('n', '<C-Left>', [[<cmd>vertical resize -2<cr>]])
return {}

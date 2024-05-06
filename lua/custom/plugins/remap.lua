vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')

if true then
end
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')

-- VScode的區塊移動
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi')
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')

-- VScode的注釋
vim.keymap.set('i', '<C-_>', '<Esc><Plug>(comment_toggle_linewise_current)')
vim.keymap.set('n', '<C-_>', '<Plug>(comment_toggle_linewise_current)')
vim.keymap.set('v', '<C-_>', '<Plug>(comment_toggle_linewise_visual)gv')

-- 翻頁置中
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- 取代，而不改變剪貼簿
vim.keymap.set('x', '<leader>p', '"_dP')

-- 調整視窗大小
vim.keymap.set('n', '<C-Up>', [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set('n', '<C-Down>', [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
vim.keymap.set('n', '<C-Right>', [[<cmd>vertical resize +2<cr>]])
vim.keymap.set('n', '<C-Left>', [[<cmd>vertical resize -2<cr>]])
return {}

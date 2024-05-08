vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')

-- VScode的區塊移動
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")

vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- VScode的注釋
vim.keymap.set('i', '<C-_>', '<Esc><Plug>(comment_toggle_linewise_current)')
vim.keymap.set('n', '<C-_>', '<Plug>(comment_toggle_linewise_current)')
vim.keymap.set('v', '<C-_>', '<Plug>(comment_toggle_linewise_visual)gv')
vim.keymap.set('i', '<C-/>', '<Esc><Plug>(comment_toggle_linewise_current)')
vim.keymap.set('n', '<C-/>', '<Plug>(comment_toggle_linewise_current)')
vim.keymap.set('v', '<C-/>', '<Plug>(comment_toggle_linewise_visual)gv')

-- 縮進
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- 翻頁置中
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('i', '<C-Del>', '<C-o>dw')

-- 取代，而不改變剪貼簿
vim.keymap.set('x', '<leader>p', '"_dP')

-- 快速終端光標移出
vim.keymap.set('t', '<C-h>', '<C-\\><C-N><C-w>h')
vim.keymap.set('t', '<C-j>', '<C-\\><C-N><C-w>j')
vim.keymap.set('t', '<C-k>', '<C-\\><C-N><C-w>k')
vim.keymap.set('t', '<C-l>', '<C-\\><C-N><C-w>l')

-- 視窗管理
vim.keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split [W]indow [V]ertically' })
vim.keymap.set('n', '<leader>wh', '<C-w>s', { desc = 'Split [W]indow [H]orizontally' })
vim.keymap.set('n', '<leader>we', '<C-w>=', { desc = 'make Split [W]indow [E]qual' })
vim.keymap.set('n', '<leader>wd', '<C-w>q', { desc = 'Split [W]indow Close' })
-- 視窗移動
vim.keymap.set('n', '<leader>wI', '<C-w>I')
vim.keymap.set('n', '<leader>wH', '<C-w>H')
vim.keymap.set('n', '<leader>wL', '<C-w>L')
vim.keymap.set('n', '<leader>wK', '<C-w>K')
-- 分頁管理
vim.keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = '[T]ab [O]pen' })
vim.keymap.set('n', '<leader>td', '<cmd>tabclose<CR>', { desc = '[T]ab Close' })
vim.keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = '[T]ab [N]next' })
vim.keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = '[T]ab [P]revious' })
vim.keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = '[T]ab new bu[f]fer' })

vim.keymap.set('n', '<C-Up>', [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set('n', '<C-Down>', [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
vim.keymap.set('n', '<C-Right>', [[<cmd>vertical resize +2<cr>]])
vim.keymap.set('n', '<C-Left>', [[<cmd>vertical resize -2<cr>]])
return {}

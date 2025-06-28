M = {}
-- local alpha = function()
-- return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
-- end
-- vim.g.neovide_opacity = 0.75
-- vim.g.neovide_background_color = "#0f1176"
vim.g.neovide_show_border = true
vim.g.neovide_normal_opacity = 0.65
vim.g.neovide_window_blurred = true

if vim.g.neovide then
  vim.api.nvim_set_keymap('v', '<sc-c>', '"+y', { noremap = true }) -- Select line(s) in visual mode and copy (CTRL+Shift+V)
  vim.api.nvim_set_keymap('i', '<sc-v>', '<ESC>"+p', { noremap = true }) -- Paste in insert mode (CTRL+Shift+C)
  vim.api.nvim_set_keymap('n', '<sc-v>', '"+p', { noremap = true }) -- Paste in normal mode (CTRL+Shift+C)
end

-- vim.g.neovide_
-- local alpha = function()
--   return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
-- end
-- -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
-- vim.g.neovide_transparency = 0.8
-- vim.g.transparency = 0.8
-- vim.g.neovide_background_color = "#0f1117" .. alpha()
return M

return {
  -- Lua
  '0x00-ketsu/maximizer.nvim',
  config = function()
    require('maximizer').setup {
      vim.api.nvim_set_keymap('n', '<leader>wm', '<cmd>lua require("maximizer").toggle()<CR>', { silent = true, noremap = true }),
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end,
}

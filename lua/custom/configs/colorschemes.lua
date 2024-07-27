return {
  'olivercederborg/poimandres.nvim',
  'EdenEast/nightfox.nvim',
  'ellisonleao/gruvbox.nvim',
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'neanias/everforest-nvim',
    config = function()
      require('everforest').setup {
        transparent_background_level = 2,
      }
    end,
  },
  require('tokyonight').setup {
    transparent = true,
    styles = {
      sidebars = 'transparent',
      floats = 'transparent',
    },
  },
  config = function()
    -- require('gruvbox').setup {
    --   overrides = {
    --     SignColumn = { bg = '#ff9900' },
    --     FlashLabel = { bg = '#ff9990' },
    --   },
    -- }
    require('nightfox').setup {
      options = {
        transparent = true,
      },
    }
  end,
  -- config = function()
  --   require('tokyonight').setup {
  --     transparent = true,
  --     styles = {
  --       sidebars = 'transparent',
  --       floats = 'transparent',
  --     },
  --   }
  --   vim.cmd 'colorscheme tokyonight'
  -- end,
}

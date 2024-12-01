return {
  { 'olivercederborg/poimandres.nvim' },
  {
    'EdenEast/nightfox.nvim',
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
  },
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require('gruvbox').setup {
        -- overrides = {
        --   SignColumn = { bg = '#ff9900' },
        --   FlashLabel = { bg = '#ff9990' },
        -- },
        transparent_mode = true,
      }
    end,
  },
  {
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup {
        transparent = true,
        styles = {
          sidebars = 'transparent',
          floats = 'transparent',
        },
      }
    end,
  },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'neanias/everforest-nvim',
    config = function()
      require('everforest').setup {
        transparent_background_level = 2,
        ui_contrast = 'high',
      }
    end,
  },
  {
    'loctvl842/monokai-pro.nvim',
    config = function()
      require('monokai-pro').setup { transparent_background = true }
    end,
  },
  {
    'sainnhe/sonokai',
    config = function()
      --   require('sonokai').setup {
      --     -- transparent = true,
      --   }
      vim.g.sonokai_transparent_background = 2
    end,
  },

  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      }
    end,

    -- -- optionally set the colorscheme within lazy config
    -- init = function()
    --   vim.cmd 'colorscheme poimandres'
    -- end,
  },
}

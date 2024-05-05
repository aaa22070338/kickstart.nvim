return {
  -- amongst your other plugins
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    if vim.fn.exists 'g:os' == 0 then
      local is_windows = vim.fn.has 'win64' == 1 or vim.fn.has 'win32' == 1 or vim.fn.has 'win16' == 1
      if is_windows then
        vim.g.os = 'Windows'
        local powershell_options = {
          shell = vim.fn.executable 'pwsh' == 1 and 'pwsh' or 'powershell',
          shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;',
          shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait',
          shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode',
          shellquote = '',
          shellxquote = '',
        }

        for option, value in pairs(powershell_options) do
          vim.opt[option] = value
        end
      else
        local uname_output = vim.fn.system 'uname'
        vim.g.os = string.gsub(uname_output, '\n', '')
      end
    end

    require('toggleterm').setup {
      active = true,
      on_config_done = nil,
      -- size can be a number or function which is passed the current terminal
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      persist_size = false,
      -- direction = 'vertical' | 'horizontal' | 'window' | 'float',
      direction = 'float',
      close_on_exit = true, -- close the terminal window when the process exits
      shell = nil, -- change the default shell
      -- This field is only relevant if direction is set to 'float'
      float_opts = {
        -- The border key is *almost* the same as 'nvim_win_open'
        -- see :h nvim_win_open for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        border = 'curved',
        -- width = <value>,
        -- height = <value>,
        winblend = 0,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
    }

    vim.keymap.set('n', '<M-1>', [[<Cmd>horizontal terminal<CR>]])
    vim.keymap.set('n', '<M-2>', [[<Cmd>vertical terminal<CR>]])
  end,
}

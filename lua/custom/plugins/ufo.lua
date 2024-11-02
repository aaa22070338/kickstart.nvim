
return {
  'kevinhwang91/nvim-ufo',
  -- lazy = true,
  -- cmd = { 'UfoDisable', 'UfoEnable' },
  dependencies = {
    'kevinhwang91/promise-async',
  },
  config = function()
    vim.o.foldcolumn = '1' -- '0' is not bad
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }
    -- local language_servers = require('lspconfig').util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
    -- for _, ls in ipairs(language_servers) do
    --   require('lspconfig')[ls].setup {
    --     capabilities = capabilities,
    --     -- you can add other fields for setting up lsp server in this table
    --   }
    -- end
    local handler = function(virtText, lnum, endLnum, width, truncate)
      local newVirtText = {}
      local foldedLines = endLnum - lnum
      local totalLines = vim.api.nvim_buf_line_count(0) -- 获取当前缓冲区的总行数
      local hiddenPercentage = (foldedLines / totalLines) * 100
      local suffix = (' 󰁂 %d lines (%.1f%% hidden) '):format(foldedLines, hiddenPercentage)
      local sufWidth = vim.fn.strdisplaywidth(suffix)
      local targetWidth = width - sufWidth
      local curWidth = 0

      for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)
        if targetWidth > curWidth + chunkWidth then
          table.insert(newVirtText, chunk)
        else
          chunkText = truncate(chunkText, targetWidth - curWidth)
          local hlGroup = chunk[2]
          table.insert(newVirtText, { chunkText, hlGroup })
          chunkWidth = vim.fn.strdisplaywidth(chunkText)
          -- str width returned from truncate() may less than 2nd argument, need padding
          if curWidth + chunkWidth < targetWidth then
            suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
          end
          break
        end
        curWidth = curWidth + chunkWidth
      end
      table.insert(newVirtText, { suffix, 'MoreMsg' })
      return newVirtText
    end

    -- global handler
    -- `handler` is the 2nd parameter of `setFoldVirtTextHandler`,
    -- check out `./lua/ufo.lua` and search `setFoldVirtTextHandler` for detail.
    require('ufo').setup {
      fold_virt_text_handler = handler,
    }
    -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
  end,
  -- vim.cmd 'UfoEnable'
}

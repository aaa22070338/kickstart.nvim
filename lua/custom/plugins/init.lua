-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
if vim.fn.exists 'g:os' == 0 then
  local is_windows = vim.fn.has 'win64' == 1 or vim.fn.has 'win32' == 1 or vim.fn.has 'win16' == 1
  if is_windows then
    vim.g.os = 'Windows'
    vim.o.shell = 'pwsh.exe'
  else
    local uname_output = vim.fn.system 'uname'
    vim.g.os = string.gsub(uname_output, '\n', '')
  end
end

return {
  { 'EdenEast/nightfox.nvim' },
}

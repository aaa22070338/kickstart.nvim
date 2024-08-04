return {
  'cdelledonne/vim-cmake',
  config = function()
    local g = vim.g
    g.cmake_generate_options = { '-G', '"Ninja"', '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON' }
  end,
}

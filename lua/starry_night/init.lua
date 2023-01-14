local M = {}


M.setup = function(theme)
  vim.cmd('hi clear')
  vim.o.background = theme
  vim.cmd('syntax reset')

  vim.o.termguicolors = true
  vim.g.colors_name = 'starry_night'

  require("starry_night.options").setup(theme)

end

return M

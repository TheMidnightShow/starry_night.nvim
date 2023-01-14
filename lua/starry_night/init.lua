local M = {}


M.setup = function(theme)
  vim.cmd('hi clear')
  vim.o.background = color
  vim.cmd('syntax reset')

  vim.o.termguicolors = true
  vim.g.colors_name = 'starry_night'

  local cs = require("starry_night."..theme)
  cs.setup()
end

return M

local M = {}
local theme = require('starry_night.theme')

M.setup = function(color)
  vim.cmd('hi clear')

  vim.o.background = color 

  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'starry_night'

  theme.set_highlights(color)
end

return M

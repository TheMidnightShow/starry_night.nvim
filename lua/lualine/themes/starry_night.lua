local colors = require("starry_night.colors")
local c

if vim.o.background == "dark" then
  c = colors.dark
else
  c = colors.light
end

local M = {}

M.normal =
{
  a = { bg = c.normal, fg = c.bg, gui = "bold" },
  b = { bg = c.bg, fg = c.normal },
  c = { bg = c.bg, fg = c.normal },
}

M.insert =
{
  a = { bg = c.insert, fg = c.bg, gui = "bold" },
  b = { bg = c.bg, fg = c.insert },
  c = { bg = c.bg, fg = c.insert },
}

M.command =
{
  a = { bg = c.command, fg = c.bg, gui = "bold" },
  b = { bg = c.bg, fg = c.command },
  c = { bg = c.bg, fg = c.command },
}

M.visual =
{
  a = { bg = c.visual, fg = c.bg, gui = "bold" },
  b = { bg = c.bg, fg = c.visual },
  c = { bg = c.bg, fg = c.visual },
}

M.terminal =
{
  a = { bg = c.term, fg = c.bg, gui = "bold" },
  b = { bg = c.bg, fg = c.term },
  c = { bg = c.bg, fg = c.term },
}

M.replace =
{
  a = { bg = c.replace, fg = c.bg, gui = "bold" },
  b = { bg = c.bg, fg = c.replace },
  c = { bg = c.bg, fg = c.replace },
}

return M

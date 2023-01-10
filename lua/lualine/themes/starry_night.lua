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
  a = { bg = c.normal, fg = c.alt, gui = "bold" },
  b = { bg = c.alt, fg = c.normal },
  c = { bg = c.alt, fg = c.normal },
}

M.insert =
{
  a = { bg = c.insert, fg = c.alt, gui = "bold" },
  b = { bg = c.alt, fg = c.insert },
  c = { bg = c.alt, fg = c.insert },
}

M.command =
{
  a = { bg = c.command, fg = c.alt, gui = "bold" },
  b = { bg = c.alt, fg = c.command },
  c = { bg = c.alt, fg = c.command },
}

M.visual =
{
  a = { bg = c.visual, fg = c.alt, gui = "bold" },
  b = { bg = c.alt, fg = c.visual },
  c = { bg = c.alt, fg = c.visual },
}

M.terminal =
{
  a = { bg = c.term, fg = c.alt, gui = "bold" },
  b = { bg = c.alt, fg = c.term },
  c = { bg = c.alt, fg = c.term },
}

M.replace =
{
  a = { bg = c.replace, fg = c.alt, gui = "bold" },
  b = { bg = c.alt, fg = c.replace },
  c = { bg = c.alt, fg = c.replace },
}

return M

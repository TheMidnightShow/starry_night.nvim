local M = {}

M.dark =
{
  -- code highlighting
  bg      = "#0f080e",
  fg      = "#c9c9c9",
  alt     = "#262026",
  num     = "#edcfca",
  str     = "#eebab2",
  var     = "#ccaa9e",
  err     = "#ff6961",
  warn    = "#f89975",
  hint    = "#ac7d88",
  info    = "#898aa6",
  preproc = "#54bab9",
  comment = "#563d53",

  -- lualine modes 
  term    = "#ccaa93",
  normal  = "#c9c9c9",
  insert  = "#54bab9",
  visual  = "#edcfca",
  command = "#ac7d88",
  replace = "#eebab2",
}

M.light =
{
  -- code highlighting
  bg      = "#f0f7f1",
  fg      = "#363636",
  alt     = "#d9d9d9",
  num     = "#123035",
  str     = "#11454d",
  var     = "#335561",
  err     = "#ff6961",
  warn    = "#f89975",
  hint    = "#ac7d88",
  info    = "#898aa6",
  preproc = "#cc8f90",
  comment = "#a9c2ac",

  -- lualine modes 
  term    = "#123035",
  normal  = "#0f080e",
  insert  = "#335561",
  visual  = "#11454d",
  command = "#363636",
  replace = "#262626",
}

return M

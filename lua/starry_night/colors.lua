local M = {}

M.dark =
{
  -- code highlighting
  bg      = "#0f080e",
  fg      = "#c9c9c9",
  alt     = "#262026",
  num     = "#a2c3d2",
  str     = "#4f5b66",
  var     = "#a9a9a9",
  err     = "#9d143a",
  type    = "#5f9ea0";
  warn    = "#e2725b",
  hint    = "#004040",
  info    = "#c0c0c0",
  preproc = "#54bab9",
  comment = "#563d53",
  conditional = "#cc4e5c",

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
  bg      = "#d3d3d3",
  fg      = "#651c32",
  alt     = "#bdbdbd",
  num     = "#bc7e9e",
  str     = "#db7487",
  var     = "#393d47",
  err     = "#c63a4f",
  type    = "#964f6b";
  warn    = "#f0544f",
  hint    = "#004040",
  info    = "#43464b",
  preproc = "#331832",
  comment = "#7e7e7e",
  conditional = "#4a1942",

  -- lualine modes 
  term    = "#004c54",
  normal  = "#651c32",
  insert  = "#4a1942",
  visual  = "#edcfca",
  command = "#ac7d88",
  replace = "#eebab2",
}

return M

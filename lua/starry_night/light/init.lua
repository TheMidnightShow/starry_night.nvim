local bg = vim.o.background
local c = require("starry_night.colors").light

local M = {}

M.options =
{
  -- Normal
  { "Normal",       { fg = c.fg, bg = c.bg } },
  { "NormalNC",     { fg = c.info, bg = c.bg } },
  { "NormalFloat",  { fg = 'NONE', bg = c.alt } },

  -- Message
  { "MsgArea",      { fg = c.info, bg = c.bg } },
  { "MsgSeparator", { fg = c.info, bg = c.bg } },

  { "ModeMsg",      { fg = c.info, bg = c.alt, bold = true } },
  { "ErrorMsg",     { fg = c.err, bg = c.bg, bold = true } },
  { "WarningMsg",   { fg = c.err, bg = c.bg, bold = true } },

  -- Sign
  { "SignColumn",   { fg = c.preproc, bg = c.bg } },

  -- Spell
  { "SpellBad",     { fg = 'NONE', bg = 'NONE', sp = c.err, undercurl=true, } },
  { "SpellCap",     { fg = 'NONE', bg = 'NONE', sp = c.err, undercurl=true, } },
  { "SpellLocal",   { fg = 'NONE', bg = 'NONE', sp = c.err, underline=true, } },
  { "SpellRare",    { fg = 'NONE', bg = 'NONE', sp = c.err, underline=true, } },

  -- Pmenu
  { "Pmenu",        { fg = c.info, bg = c.alt } },
  { "PmenuSel",     { fg = c.bg, bg = c.preproc } },
  { "PmenuSbar",    { fg = 'NONE', bg = c.alt } },
  { "PmenuThumb",   { fg = 'NONE', bg = c.hint } },

  -- Folded
  { "Folded",       { fg = c.hint, bg = c.alt } },
  { "FoldColumn",   { fg = c.hint, bg = c.alt } },

  -- Cursor
  { "CursorLine",   { fg = 'NONE', bg = c.alt } },
  { "ColorColumn",  { fg = 'NONE', bg = c.alt } },
  { "CursorColumn", { fg = 'NONE', bg = c.alt } },
  { "CursorLineNr", { fg = c.fg, bg = 'NONE', bold=true, } },
  { "Cursor",       { fg = c.preproc, bg = c.preproc } },
  { "lCursor",      { fg = c.preproc, bg = c.preproc } },
  { "CursorIM",     { fg = c.preproc, bg = c.preproc } },
  { "TermCursor",   { fg = c.preproc, bg = c.preproc } },
  { "TermCursorNC", { fg = c.preproc, bg = c.preproc } },

  -- Visual
  { "Visual",       { fg = c.bg, bg = c.preproc } },
  { "VisualNOS",    { fg = 'NONE', bg = c.alt } },

  -- Diff
  { "DiffText",     { fg = c.alt, bg = c.preproc } },
  { "DiffAdd",      { fg = c.alt, bg = c.preproc } },
  { "DiffDelete",   { fg = c.alt, bg = c.preproc } },
  { "DiffChange",   { fg = c.alt, bg = c.preproc, underline=true, } },

  -- Match
  { "MatchWord",    { fg = 'NONE', bg = 'NONE', underline=true, } },
  { "MatchParen",   { fg = c.info, bg = 'NONE', underline=true, } },
  { "MatchWordCur", { fg = 'NONE', bg = 'NONE', underline=true, } },
  { "MatchParenCur",{ fg = 'NONE', bg = 'NONE', underline=true, } },

  -- Miscellaneous 
  { "LineNr",       { fg = c.hint, bg = 'NONE' } },
  { "Conceal",      { fg = c.hint, bg = 'NONE' } },
  { "WildMenu",     { fg = c.info, bg = c.preproc } },
  { "Directory",    { fg = c.info, bg = 'NONE' } },
  { "VertSplit",    { fg = c.alt, bg = c.bg } },
  { "QkFixLine",    { fg = 'NONE', bg = c.preproc } },
  { "FloatBoder",   { fg = c.hint, bg = c.alt } },
  { "Whitespace",   { fg = c.bg, bg = 'NONE' } },
  { "SpecialKey",   { fg = c.preproc, bg = 'NONE', bold=true, } },

--------------------------------------------------------
----- search and change --------------------------------
--------------------------------------------------------

  -- Search
  { "Search",       { fg = c.bg, bg = c.preproc } },
  { "IncSearch",    { fg = c.bg, bg = c.hint } },
  { "Substitute",   { fg = c.bg, bg = c.hint } },

  -- Tabline
  { "TabLine",      { fg = c.fg, bg = c.bg } },
  { "TabLineSel",   { fg = c.info, bg = c.bg } },
  { "TabLineFill",  { fg = c.bg, bg = c.bg } },

  -- Miscellaneous 
  { "NonText",      { fg = c.bg, bg = 'NONE' } },
  { "MoreMsg",      { fg = c.hint, bg = 'NONE' } },
  { "Question",     { fg = c.hint, bg = 'NONE' } },
  { "EndOfBuffer",  { fg = c.bg, bg = 'NONE' } },

--------------------------------------------------------
----- Code ---------------------------------------------
--------------------------------------------------------

  { "cLabel",       { fg = c.var, bg = 'NONE' } },
  { "cBlock",       { fg = c.var, bg = 'NONE' } },

  { "Comment",      { fg = c.hint, bg = 'NONE' } },
  { "Variable",     { fg = c.preproc, bg = 'NONE' } },
  { "String",       { fg = c.info, bg = 'NONE' } },
  { "Character",    { fg = c.preproc, bg = 'NONE' } },
  { "Number",       { fg = c.num, bg = 'NONE' } },
  { "Float",        { fg = c.num, bg = 'none' } },

  { "boolean",      { fg = c.var, bg = 'none' } },
  { "constant",     { fg = c.var, bg = 'none' } },
  { "type",         { fg = c.var, bg = 'none' } },

  { "function",     { fg = c.preproc, bg = 'none' } },
  { "keyword",      { fg = c.preproc, bg = 'none' } },
  { "conditional",  { fg = c.var, bg = 'none' } },
  { "repeat",       { fg = c.var, bg = 'none' } },
  { "operator",     { fg = c.info, bg = 'NONE' } },
  { "PreProc",      { fg = c.preproc, bg = 'NONE' } },
  { "Include",      { fg = c.preproc, bg = 'NONE' } },
  { "Exception",    { fg = c.var, bg = 'NONE' } },
  { "StorageClass", { fg = c.var, bg = 'NONE' } },
  { "Structure",    { fg = c.var, bg = 'NONE' } },
  { "Typedef",      { fg = c.preproc, bg = 'NONE' } },
  { "Define",       { fg = c.preproc, bg = 'NONE' } },
  { "Macro",        { fg = c.preproc, bg = 'NONE' } },
  { "Debug",        { fg = c.err, bg = 'NONE' } },
  { "Title",        { fg = c.preproc, bg = 'NONE', bold=true, } },
  { "Label",        { fg = c.info, bg = 'NONE' } },
  { "SpecialChar",  { fg = c.preproc, bg = 'NONE' } },
  { "Delimiter",    { fg = c.info, bg = 'NONE' } },
  { "Tag",          { fg = c.preproc, bg = 'NONE' } },
  { "Bold",         { fg = 'NONE', bg = 'NONE', bold=true, } },
  { "Italic",       { fg = 'NONE', bg = 'NONE', italic=true, } },
  { "Underlined",   { fg = 'NONE', bg = 'NONE', underline=true, } },
  { "Ignore",       { fg = c.preproc, bg = 'NONE', bold=true, } },
  { "Todo",         { fg = c.preproc, bg = 'NONE', bold=true, } },
  { "Error",        { fg = c.err, bg = 'NONE', bold=true, } },
  { "Statement",    { fg = c.preproc, bg = 'NONE' } },
  { "Identifier",   { fg = c.info, bg = 'NONE' } },
  { "PreCondit",    { fg = c.preproc, bg = 'NONE' } },
  { "Special",      { fg = c.hint, bg = 'NONE' } },
  { "SpecialComment", { fg = c.info, bg = 'NONE' } },

--------------------------------------------------------
----- Treesitter ---------------------------------------
--------------------------------------------------------

  { "TSComment", { link = 'Comment' } },
  { "TSVariable", { link = 'Variable' } },
  { "TSString", { link = 'String' } },
  { "TSStringRegex", { link = 'String' } },
  { "TSStringEscape", { link = 'String' } },
  { "TSCharacter", { link = 'String' } },
  { "TSCharacterSpecial", { link = 'SpecialChar' } },
  { "TSNumber", { link = 'Number' } },
  { "TSFloat", { link = 'Float' } },
  { "TSBoolean", { link = 'Boolean' } },
  { "TSConstant", { link = 'Constant' } },
  { "TSConstBtin", { link = 'Constant' } },
  { "TSConstructor", { link = 'Type' } },
  { "TSType", { link = 'Type' } },
  { "TSInclude", { link = 'Include' } },
  { "TSException", { link = 'Exception' } },
  { "TSKeyword", { link = 'Keyword' } },
  { "TSKeywordReturn", { link = 'Keyword' } },
  { "TSKeywordOperator", { link = 'Keyword' } },
  { "TSKeywordFunction", { link = 'Keyword' } },
  { "TSFunction", { link = 'Function' } },
  { "TSFuncBtin", { link = 'Function' } },
  { "TSMethod", { link = 'Function' } },
  { "TSFuncMacro", { link = 'Function' } },
  { "TSConditional", { link = 'Conditional' } },
  { "TSRepeat", { link = 'Repeat' } },
  { "TSOperator", { link = 'Operator' } },
  { "TSPreProc", { link = 'PreProc' } },
  { "TSStorageClass", { link = 'StorageClass' } },
  { "TSStructure", { link = 'Structure' } },
  { "TSTypeDefinition", { link = 'Typedef' } },
  { "TSDefine", { link = 'Define' } },
  { "TSNote", { link = 'Comment' } },
  { "TSTodo", { link = 'Todo' } },
  { "TSDebug", { link = 'Debug' } },
  { "TSDanger", { link = 'Error' } },
  { "TSTitle", { link = 'Title' } },
  { "TSLabel", { link = 'Label' } },
  { "TSPunctDelimiter", { link = 'Delimiter' } },
  { "TSTagDelimiter", { link = 'Delimiter' } },
  { "TSPunctBracket", { link = 'Delimiter' } },
  { "TSPunctSpecial", { link = 'Delimiter' } },
  { "TSTag", { link = 'Tag' } },
  { "TSStrong", { link = 'Bold' } },
  { "TSEmphasis", { link = 'Italic' } },
  { "TSUnderline", { link = 'Underline' } },
  { "TSStrike", { fg = 'NONE', bg = 'NONE', strikethrough=true, } },
  { "TSStringSpecial", { fg = c.info, bg = 'NONE' } },
  { "TSEnvironmentName", { fg = c.preproc, bg = 'NONE' } },
  { "TSVariableBtin", { fg = c.err, bg = 'NONE' } },
  { "TSConstMacro", { fg = c.hint, bg = 'NONE' } },
  { "TSTypeBtin", { fg = c.hint, bg = 'NONE' } },
  { "TSAnnotation", { fg = c.preproc, bg = 'NONE' } },
  { "TSNamespace", { fg = c.preproc, bg = 'NONE' } },
  { "TSSymbol", { fg = c.info, bg = 'NONE' } },
  { "TSField", { fg = c.info, bg = 'NONE' } },
  { "TSProperty", { fg = c.err, bg = 'NONE' } },
  { "TSParameter", { fg = c.err, bg = 'NONE' } },
  { "TSParameterReference", { fg = c.err, bg = 'NONE' } },
  { "TSAttribute", { fg = c.err, bg = 'NONE' } },
  { "TSText", { fg = c.info, bg = 'NONE' } },
  { "TSTagAttribute", { fg = c.hint, bg = 'NONE', italic=true, } },
  { "TSError", { fg = c.err, bg = 'NONE' } },
  { "TSWarning", { fg = c.err, bg = 'NONE' } },
  { "TSQueryLinterError", { fg = c.err, bg = 'NONE' } },
  { "TSURI", { fg = c.preproc, bg = 'NONE', underline=true, } },
  { "TSMath", { fg = c.hint, bg = 'NONE' } },
  { "TSLiteral", { fg = c.hint, bg = 'NONE' } },

  -- markdown
  { "markdownBlockquote", { fg = c.hint, bg = 'NONE' } },
  { "markdownCode", { fg = c.hint, bg = 'NONE' } },
  { "markdownCodeBlock", { fg = c.hint, bg = 'NONE' } },
  { "markdownCodeDelimiter", { fg = c.hint, bg = 'NONE' } },
  { "markdownH1", { link = 'Title' } },
  { "markdownH2", { link = 'Title' } },
  { "markdownH3", { link = 'Title' } },
  { "markdownH4", { link = 'Title' } },
  { "markdownH5", { link = 'Title' } },
  { "markdownH6", { link = 'Title' } },
  { "markdownHeadingDelimiter", { fg = c.preproc, bg = 'NONE' } },
  { "markdownHeadingRule", { fg = c.info, bg = 'NONE', bold=true, } },
  { "markdownId", { link = 'Identifier' } },
  { "markdownIdDeclaration", { fg = c.preproc, bg = 'NONE' } },
  { "markdownIdDelimiter", { fg = c.fg, bg = 'NONE' } },
  { "markdownLinkDelimiter", { fg = c.fg, bg = 'NONE' } },
  { "markdownBold", { fg = c.preproc, bg = 'NONE', bold=true, } },
  { "markdownItalic", { link = 'Italic' } },
  { "markdownBoldItalic", { fg = c.hint, bg = 'NONE', bold=true, italic=true, } },
  { "markdownListMarker", { fg = c.preproc, bg = 'NONE' } },
  { "markdownOrderedListMarker", { fg = c.preproc, bg = 'NONE' } },
  { "markdownRule", { fg = c.hint, bg = 'NONE' } },
  { "markdownUrl", { fg = c.preproc, bg = 'NONE', underdotted=true, } },
  { "markdownLinkText", { fg = c.preproc, bg = 'NONE' } },
  { "markdownFootnote", { fg = c.hint, bg = 'NONE' } },
  { "markdownFootnoteDefinition", { fg = c.hint, bg = 'NONE' } },
  { "markdownEscape", { fg = c.hint, bg = 'NONE' } },

  -- Whichkey
  { "WhichKey", { fg = c.preproc, bg = 'NONE' } },
  { "WhichKeySeperator", { fg = c.preproc, bg = 'NONE' } },
  { "WhichKeyGroup", { fg = c.preproc, bg = 'NONE' } },
  { "WhichKeyDesc", { fg = c.info, bg = 'NONE' } },
  { "WhichKeyFloat", { fg = 'NONE', bg = c.alt } },

  -- Git
  { "SignAdd", { fg = c.preproc, bg = 'NONE' } },
  { "SignChange", { fg = c.preproc, bg = 'NONE' } },
  { "SignDelete", { fg = c.preproc, bg = 'NONE' } },
  { "GitSignsAdd", { fg = c.preproc, bg = 'NONE' } },
  { "GitSignsChange", { fg = c.preproc, bg = 'NONE' } },
  { "GitSignsDelete", { fg = c.preproc, bg = 'NONE' } },

  -- LSP
  { "DiagnosticHint", { fg = c.preproc, bg = c.bg } },
  { "DiagnosticInfo", { fg = c.info, bg = c.bg } },
  { "DiagnosticWarn", { fg = c.err, bg = c.bg } },
  { "DiagnosticError", { fg = c.err, bg = 'NONE' } },
  { "DiagnosticOther", { fg = c.preproc, bg = 'NONE' } },
  { "DiagnosticSignHint", { link = 'DiagnosticHint' } },
  { "DiagnosticSignInfo", { link = 'DiagnosticInfo' } },
  { "DiagnosticSignWarn", { link = 'DiagnosticWarn' } },
  { "DiagnosticSignError", { link = 'DiagnosticError' } },
  { "DiagnosticSignOther", { link = 'DiagnosticOther' } },
  { "DiagnosticSignWarning", { link = 'DiagnosticWarn' } },
  { "DiagnosticFloatingHint", { link = 'DiagnosticHint' } },
  { "DiagnosticFloatingInfo", { link = 'DiagnosticInfo' } },
  { "DiagnosticFloatingWarn", { link = 'DiagnosticWarn' } },
  { "DiagnosticFloatingError", { link = 'DiagnosticError' } },
  { "DiagnosticUnderlineHint", { fg = 'NONE', bg = 'NONE', sp = c.var, undercurl=true, } },
  { "DiagnosticUnderlineInfo", { fg = 'NONE', bg = 'NONE', sp = c.info, undercurl=true, } },
  { "DiagnosticUnderlineWarn", { fg = 'NONE', bg = 'NONE', sp = c.err, undercurl=true, } },
  { "DiagnosticUnderlineError", { fg = 'NONE', bg = 'NONE', sp = c.err, undercurl=true, } },
  { "DiagnosticSignInformation", { link = 'DiagnosticInfo' } },
  { "DiagnosticVirtualTextHint", { fg = c.var, bg = c.var_bg } },
  { "DiagnosticVirtualTextInfo", { fg = c.info, bg = c.info_bg } },
  { "DiagnosticVirtualTextWarn", { fg = c.err, bg = c.err_bg } },
  { "DiagnosticVirtualTextError", { fg = c.err, bg = c.err_bg } },
  { "LspDiagnosticsError", { fg = c.err, bg = 'NONE' } },
  { "LspDiagnosticsWarning", { fg = c.err, bg = 'NONE' } },
  { "LspDiagnosticsInfo", { fg = c.info, bg = 'NONE' } },
  { "LspDiagnosticsInformation", { link = 'LspDiagnosticsInfo' } },
  { "LspDiagnosticsHint", { fg = c.var, bg = 'NONE' } },
  { "LspDiagnosticsDefaultError", { link = 'LspDiagnosticsError' } },
  { "LspDiagnosticsDefaultWarning", { link = 'LspDiagnosticsWarning' } },
  { "LspDiagnosticsDefaultInformation", { link = 'LspDiagnosticsInfo' } },
  { "LspDiagnosticsDefaultInfo", { link = 'LspDiagnosticsInfo' } },
  { "LspDiagnosticsDefaultHint", { link = 'LspDiagnosticsHint' } },
  { "LspDiagnosticsVirtualTextError", { link = 'DiagnosticVirtualTextError' } },
  { "LspDiagnosticsVirtualTextWarning", { link = 'DiagnosticVirtualTextWarn' } },
  { "LspDiagnosticsVirtualTextInformation", { link = 'DiagnosticVirtualTextInfo' } },
  { "LspDiagnosticsVirtualTextInfo", { link = 'DiagnosticVirtualTextInfo' } },
  { "LspDiagnosticsVirtualTextHint", { link = 'DiagnosticVirtualTextHint' } },
  { "LspDiagnosticsFloatingError", { link = 'LspDiagnosticsError' } },
  { "LspDiagnosticsFloatingWarning", { link = 'LspDiagnosticsWarning' } },
  { "LspDiagnosticsFloatingInformation", { link = 'LspDiagnosticsInfo' } },
  { "LspDiagnosticsFloatingInfo", { link = 'LspDiagnosticsInfo' } },
  { "LspDiagnosticsFloatingHint", { link = 'LspDiagnosticsHint' } },
  { "LspDiagnosticsSignError", { link = 'LspDiagnosticsError' } },
  { "LspDiagnosticsSignWarning", { link = 'LspDiagnosticsWarning' } },
  { "LspDiagnosticsSignInformation", { link = 'LspDiagnosticsInfo' } },
  { "LspDiagnosticsSignInfo", { link = 'LspDiagnosticsInfo' } },
  { "LspDiagnosticsSignHint", { link = 'LspDiagnosticsHint' } },
  { "NvimTreeLspDiagnosticsError", { link = 'LspDiagnosticsError' } },
  { "NvimTreeLspDiagnosticsWarning", { link = 'LspDiagnosticsWarning' } },
  { "NvimTreeLspDiagnosticsInformation", { link = 'LspDiagnosticsInfo' } },
  { "NvimTreeLspDiagnosticsInfo", { link = 'LspDiagnosticsInfo' } },
  { "NvimTreeLspDiagnosticsHint", { link = 'LspDiagnosticsHint' } },
  { "LspDiagnosticsUnderlineError", { link = 'DiagnosticUnderlineError' } },
  { "LspDiagnosticsUnderlineWarning", { link = 'DiagnosticUnderlineWarn' } },
  { "LspDiagnosticsUnderlineInformation", { link = 'DiagnosticUnderlineInfo' } },
  { "LspDiagnosticsUnderlineInfo", { link = 'DiagnosticUnderlineInfo' } },
  { "LspDiagnosticsUnderlineHint", { link = 'DiagnosticUnderlineHint' } },
  { "LspReferenceRead", { fg = 'NONE', bg = c.alt } },
  { "LspReferenceText", { fg = 'NONE', bg = c.alt } },
  { "LspReferenceWrite", { fg = 'NONE', bg = c.alt } },
  { "LspCodeLens", { fg = c.fg, bg = 'NONE', italic=true, } },
  { "LspCodeLensSeparator", { fg = c.fg, bg = 'NONE', italic=true, } },

  -- Qkscope
  { "QkScopePrimary", { fg = '#ff007c', bg = 'NONE', underline=true, } },
  { "QkScopeSecondary", { fg = '#00dfff', bg = 'NONE', underline=true, } },

  -- Telescope
  { "TelescopeSelection", { fg = c.preproc, bg = c.alt } },
  { "TelescopeSelectionCaret", { fg = c.preproc, bg = c.alt } },
  { "TelescopeMatching", { fg = c.preproc, bg = 'NONE', bold=true, italic=true, } },
  { "TelescopeBorder", { fg = c.info, bg = 'NONE' } },
  { "TelescopeNormal", { fg = c.preproc, bg = c.bg } },
  { "TelescopePromptTitle", { fg = c.info, bg = 'NONE' } },
  { "TelescopePromptPrefix", { fg = c.var, bg = 'NONE' } },
  { "TelescopeResultsTitle", { fg = c.info, bg = 'NONE' } },
  { "TelescopePreviewTitle", { fg = c.info, bg = 'NONE' } },
  { "TelescopePromptCounter", { fg = c.var, bg = 'NONE' } },
  { "TelescopePreviewHyphen", { fg = c.var, bg = 'NONE' } },

  -- NvimTree
  { "NvimTreeFolderIcon", { link = 'Directory' } },
  { "NvimTreeIndentMarker", { fg = c.fg, bg = 'NONE' } },
  { "NvimTreeNormal", { fg = c.preproc, bg = c.bg } },
  { "NvimTreeVertSplit", { fg = c.alt, bg = c.alt } },
  { "NvimTreeFolderName", { link = 'Directory' } },
  { "NvimTreeOpenedFolderName", { fg = c.folder_blue, bg = 'NONE', bold=true, italic=true, } },
  { "NvimTreeEmptyFolderName", { fg = c.info, bg = 'NONE', italic=true, } },
  { "NvimTreeGitIgnored", { fg = c.info, bg = 'NONE', italic=true, } },
  { "NvimTreeImageFile", { fg = c.fg, bg = 'NONE' } },
  { "NvimTreeSpecialFile", { fg = c.hint, bg = 'NONE' } },
  { "NvimTreeEndOfBuffer", { fg = c.bg, bg = 'NONE' } },
  { "NvimTreeCursorLine", { fg = 'NONE', bg = c.alt } },
  { "NvimTreeGitStaged", { fg = c.preproc, bg = 'NONE' } },
  { "NvimTreeGitNew", { fg = c.preproc, bg = 'NONE' } },
  { "NvimTreeGitRenamed", { fg = c.preproc, bg = 'NONE' } },
  { "NvimTreeGitDeleted", { fg = c.preproc, bg = 'NONE' } },
  { "NvimTreeGitMerge", { fg = c.preproc, bg = 'NONE' } },
  { "NvimTreeGitDirty", { fg = c.preproc, bg = 'NONE' } },
  { "NvimTreeSymlink", { fg = c.preproc, bg = 'NONE' } },
  { "NvimTreeRootFolder", { fg = c.info, bg = 'NONE', bold=true, } },
  { "NvimTreeExecFile", { fg = '#9FBA89', bg = 'NONE' } },

  -- Lir
  { "LirFloatNormal", { fg = c.info, bg = c.alt } },
  { "LirDir", { link = 'Directory' } },
  { "LirSymLink", { fg = c.preproc, bg = 'NONE' } },
  { "LirEmptyDirText", { fg = c.hint, bg = 'NONE', italic=true, } },

  -- Buffer
  { "BufferCurrent", { fg = c.bg, bg = c.preproc } },
  { "BufferCurrentIndex", { fg = c.info, bg = c.bg } },
  { "BufferCurrentMod", { fg = c.info, bg = c.bg } },
  { "BufferCurrentSign", { fg = c.var, bg = c.bg } },
  { "BufferCurrentTarget", { fg = c.err, bg = c.bg, bold=true, } },
  { "BufferVisible", { fg = c.info, bg = c.bg } },
  { "BufferVisibleIndex", { fg = c.info, bg = c.bg } },
  { "BufferVisibleMod", { fg = c.info, bg = c.bg } },
  { "BufferVisibleSign", { fg = c.hint, bg = c.bg } },
  { "BufferVisibleTarget", { fg = c.err, bg = c.bg, bold=true, } },
  { "BufferInactive", { fg = c.hint, bg = c.alt } },
  { "BufferInactiveIndex", { fg = c.hint, bg = c.alt } },
  { "BufferInactiveMod", { fg = c.info, bg = c.alt } },
  { "BufferInactiveSign", { fg = c.hint, bg = c.alt } },
  { "BufferInactiveTarget", { fg = c.err, bg = c.alt, bold=true, } },

  -- StatusLine
  { "StatusLine", { fg = c.fg, bg = c.bg } },
  { "StatusLineNC", { fg = "NONE", bg = "NONE" } },
  { "StatusLineSeparator", { fg = c.bg, bg = 'NONE' } },
  { "StatusLineTerm", { fg = c.bg, bg = 'NONE' } },
  { "StatusLineTermNC", { fg = c.bg, bg = 'NONE' } },

  -- IndentBlankline
  { "IndentBlanklineContextChar", { fg = c.info, bg = 'NONE' } },
  { "IndentBlanklineContextStart", { fg = 'NONE', bg = 'NONE', underline=true, } },
  { "IndentBlanklineChar", { fg = c.alt, bg = 'NONE' } },

  -- Dashboard
  { "DashboardHeader", { fg = c.preproc, bg = 'NONE' } },
  { "DashboardCenter", { fg = c.preproc, bg = 'NONE' } },
  { "DashboardFooter", { fg = c.preproc, bg = 'NONE' } },

  -- DiffView
  { "DiffViewNormal", { fg = c.hint, bg = c.alt } },
  { "DiffviewStatusAdded", { fg = c.preproc, bg = 'NONE' } },
  { "DiffviewStatusModified", { fg = c.preproc, bg = 'NONE' } },
  { "DiffviewStatusRenamed", { fg = c.preproc, bg = 'NONE' } },
  { "DiffviewStatusDeleted", { fg = c.preproc, bg = 'NONE' } },
  { "DiffviewFilePanelInsertion", { fg = c.preproc, bg = 'NONE' } },
  { "DiffviewFilePanelDeletion", { fg = c.preproc, bg = 'NONE' } },
  { "DiffviewVertSplit", { fg = 'NONE', bg = c.bg } },

  -- Bookmarks
  { "BookmarkSign", { fg = c.preproc, bg = 'NONE' } },
  { "BookmarkAnnotationSign", { fg = c.hint, bg = 'NONE' } },
  { "BookmarkLine", { fg = c.preproc, bg = 'NONE' } },
  { "BookmarkAnnotationLine", { fg = c.preproc, bg = 'NONE' } },

  -- Bqf
  { "BqfPreviewBorder", { fg = c.info, bg = 'NONE' } },
  { "BqfPreviewRange", { fg = 'NONE', bg = c.preproc } },

  -- Cmp
  { "CmpItemAbbrDeprecated", { fg = c.hint, bg = 'NONE', strikethrough=true, } },
  { "CmpItemAbbrMatch", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemAbbrMatchFuzzy", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindFunction", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindMethod", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindConstructor", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindClass", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindEnum", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindEvent", { fg = c.hint, bg = 'NONE' } },
  { "CmpItemKindInterface", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindStruct", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindVariable", { fg = c.err, bg = 'NONE' } },
  { "CmpItemKindField", { fg = c.err, bg = 'NONE' } },
  { "CmpItemKindProperty", { fg = c.err, bg = 'NONE' } },
  { "CmpItemKindEnumMember", { fg = c.hint, bg = 'NONE' } },
  { "CmpItemKindConstant", { fg = c.hint, bg = 'NONE' } },
  { "CmpItemKindKeyword", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindModule", { fg = c.preproc, bg = 'NONE' } },
  { "CmpItemKindValue", { fg = c.info, bg = 'NONE' } },
  { "CmpItemKindUnit", { fg = c.info, bg = 'NONE' } },
  { "CmpItemKindText", { fg = c.info, bg = 'NONE' } },
  { "CmpItemKindSnippet", { fg = c.hint, bg = 'NONE' } },
  { "CmpItemKindFile", { fg = c.info, bg = 'NONE' } },
  { "CmpItemKindFolder", { fg = c.info, bg = 'NONE' } },
  { "CmpItemKindColor", { fg = c.info, bg = 'NONE' } },
  { "CmpItemKindReference", { fg = c.info, bg = 'NONE' } },
  { "CmpItemKindOperator", { fg = c.info, bg = 'NONE' } },
  { "CmpItemKindTypeParameter", { fg = c.err, bg = 'NONE' } },

  -- Navic
  { "NavicIconsFile", { fg = c.info, bg = 'NONE' } },
  { "NavicIconsModule", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsNamespace", { fg = c.info, bg = 'NONE' } },
  { "NavicIconsPackage", { fg = c.info, bg = 'NONE' } },
  { "NavicIconsClass", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsMethod", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsProperty", { fg = c.err, bg = 'NONE' } },
  { "NavicIconsField", { fg = c.err, bg = 'NONE' } },
  { "NavicIconsConstructor", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsEnum", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsInterface", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsFunction", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsVariable", { fg = c.err, bg = 'NONE' } },
  { "NavicIconsConstant", { fg = c.hint, bg = 'NONE' } },
  { "NavicIconsString", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsNumber", { fg = c.hint, bg = 'NONE' } },
  { "NavicIconsBoolean", { fg = c.hint, bg = 'NONE' } },
  { "NavicIconsArray", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsObject", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsKey", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsKeyword", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsNull", { fg = c.hint, bg = 'NONE' } },
  { "NavicIconsEnumMember", { fg = c.hint, bg = 'NONE' } },
  { "NavicIconsStruct", { fg = c.preproc, bg = 'NONE' } },
  { "NavicIconsEvent", { fg = c.hint, bg = 'NONE' } },
  { "NavicIconsOperator", { fg = c.info, bg = 'NONE' } },
  { "NavicIconsTypeParameter", { fg = c.err, bg = 'NONE' } },
  { "NavicText", { fg = c.fg, bg = 'NONE' } },
  { "NavicSeparator", { fg = c.fg, bg = 'NONE' } },

  -- Gps
  { "GpsNormal", { fg = c.hint, bg = '#1d1d1d' } },
  { "GpsItemKindFunction", { fg = c.preproc, bg = 'NONE' } },
  { "GpsItemKindMethod", { fg = c.preproc, bg = 'NONE' } },
  { "GpsItemKindConstructor", { fg = c.hint, bg = 'NONE' } },
  { "GpsItemKindClass", { fg = c.hint, bg = 'NONE' } },
  { "GpsItemKindEnum", { fg = c.hint, bg = 'NONE' } },
  { "GpsItemKindEvent", { fg = c.preproc, bg = 'NONE' } },
  { "GpsItemKindInterface", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindStruct", { fg = c.preproc, bg = 'NONE' } },
  { "GpsItemKindVariable", { fg = c.preproc, bg = 'NONE' } },
  { "GpsItemKindField", { fg = c.preproc, bg = 'NONE' } },
  { "GpsItemKindProperty", { fg = c.preproc, bg = 'NONE' } },
  { "GpsItemKindEnumMember", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindConstant", { fg = c.preproc, bg = 'NONE' } },
  { "GpsItemKindKeyword", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindModule", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindValue", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindUnit", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindText", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindSnippet", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindFile", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindFolder", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindColor", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindReference", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindOperator", { fg = c.info, bg = 'NONE' } },
  { "GpsItemKindTypeParameter", { fg = c.info, bg = 'NONE' } },

  -- Packer
  { "packerString", { fg = c.hint, bg = 'NONE' } },
  { "packerHash", { fg = c.preproc, bg = 'NONE' } },
  { "packerOutput", { fg = c.preproc, bg = 'NONE' } },
  { "packerRelDate", { fg = c.hint, bg = 'NONE' } },
  { "packerSuccess", { fg = c.success_green, bg = 'NONE' } },
  { "packerStatusSuccess", { fg = c.preproc, bg = 'NONE' } },

  -- SymbolOutline
  { "SymbolsOutlineConnector", { fg = c.hint, bg = 'NONE' } },
  { "FocusedSymbol", { fg = 'NONE', bg = '#36383F' } },

  -- Notify
  { "NotifyERRORBorder", { fg = '#8A1F1F', bg = 'NONE' } },
  { "NotifyWARNBorder", { fg = '#79491D', bg = 'NONE' } },
  { "NotifyINFOBorder", { fg = c.preproc, bg = 'NONE' } },
  { "NotifyDEBUGBorder", { fg = c.hint, bg = 'NONE' } },
  { "NotifyTRACEBorder", { fg = '#4F3552', bg = 'NONE' } },
  { "NotifyERRORIcon", { fg = c.err, bg = 'NONE' } },
  { "NotifyWARNIcon", { fg = c.err, bg = 'NONE' } },
  { "NotifyINFOIcon", { fg = c.preproc, bg = 'NONE' } },
  { "NotifyDEBUGIcon", { fg = c.hint, bg = 'NONE' } },
  { "NotifyTRACEIcon", { fg = c.preproc, bg = 'NONE' } },
  { "NotifyERRORTitle", { fg = c.err, bg = 'NONE' } },
  { "NotifyWARNTitle", { fg = c.err, bg = 'NONE' } },
  { "NotifyINFOTitle", { fg = c.preproc, bg = 'NONE' } },
  { "NotifyDEBUGTitle", { fg = c.hint, bg = 'NONE' } },
  { "NotifyTRACETitle", { fg = c.preproc, bg = 'NONE' } },

  -- TreesitterContext
  { "TreesitterContext", { fg = 'NONE', bg = c.alt } },

  -- Hop
  { "HopNextKey", { fg = '#4ae0ff', bg = 'NONE' } },
  { "HopNextKey1", { fg = '#d44eed', bg = 'NONE' } },
  { "HopNextKey2", { fg = '#b42ecd', bg = 'NONE' } },
  { "HopUnmatched", { fg = c.hint, bg = 'NONE' } },
  { "HopPreview", { fg = '#c7ba7d', bg = 'NONE' } },

  -- Crates
  { "CratesNvimLoading", { fg = c.var, bg = 'NONE' } },
  { "CratesNvimVersion", { fg = c.var, bg = 'NONE' } },

  -- Misc
  { "diffAdded", { fg = c.preproc, bg = 'NONE' } },
  { "diffRemoved", { fg = c.preproc, bg = 'NONE' } },
  { "diffFileId", { fg = c.preproc, bg = 'NONE', bold=true, reverse=true, } },
  { "diffFile", { fg = c.alt, bg = 'NONE' } },
  { "diffNewFile", { fg = c.preproc, bg = 'NONE' } },
  { "diffOldFile", { fg = c.err, bg = 'NONE' } },
  { "debugPc", { fg = 'NONE', bg = c.preproc } },
  { "debugBreakpoint", { fg = c.err, bg = 'NONE', reverse=true, } },
  { "CodiVirtualText", { fg = c.var, bg = 'NONE' } },
  { "SniprunVirtualTextOk", { fg = c.var, bg = 'NONE' } },
  { "SniprunFloatingWinOk", { fg = c.var, bg = 'NONE' } },
  { "SniprunVirtualTextErr", { fg = c.err, bg = 'NONE' } },
  { "SniprunFloatingWinErr", { fg = c.err, bg = 'NONE' } },
  { "DapBreakpoint", { fg = c.err, bg = 'NONE' } },

  -- Language
  { "xmlTag", { fg = c.preproc, bg = 'NONE' } },
  { "xmlTagName", { fg = c.preproc, bg = 'NONE' } },
  { "xmlEndTag", { fg = c.preproc, bg = 'NONE' } },
  { "yamlPlainScalar", { fg = c.hint, bg = 'NONE' } },
  { "yamlTSField", { fg = c.preproc, bg = 'NONE' } },
  { "luaFunc", { fg = c.hint, bg = 'NONE' } },
  { "luaFunction", { fg = c.preproc, bg = 'NONE' } },
  { "hclTSPunctSpecial", { fg = c.info, bg = 'NONE' } },
  { "htmlH1", { fg = c.info, bg = 'NONE' } },
  { "htmlH2", { fg = c.info, bg = 'NONE' } },
  { "htmlH3", { fg = c.info, bg = 'NONE' } },
  { "htmlH4", { fg = c.info, bg = 'NONE' } },
  { "htmlH5", { fg = c.info, bg = 'NONE' } },
  { "htmlH6", { fg = c.info, bg = 'NONE' } },
  { "htmlHead", { fg = c.info, bg = 'NONE' } },
  { "htmlTitle", { fg = c.info, bg = 'NONE' } },
  { "htmlArg", { fg = c.info, bg = 'NONE' } },
  { "htmlTag", { fg = c.preproc, bg = 'NONE' } },
  { "htmlTagN", { fg = c.preproc, bg = 'NONE' } },
  { "htmlTagName", { fg = c.preproc, bg = 'NONE' } },
  { "htmlComment", { fg = c.preproc, bg = 'NONE' } },
  { "htmlLink", { fg = c.hint, bg = 'NONE', underline=true, } },
  { "cssBraces", { fg = c.info, bg = 'NONE' } },
  { "cssInclude", { fg = c.preproc, bg = 'NONE' } },
  { "cssTagName", { fg = c.hint, bg = 'NONE' } },
  { "cssClassName", { fg = c.hint, bg = 'NONE' } },
  { "cssPseudoClass", { fg = c.hint, bg = 'NONE' } },
  { "cssPseudoClassId", { fg = c.hint, bg = 'NONE' } },
  { "cssPseudoClassLang", { fg = c.hint, bg = 'NONE' } },
  { "cssIdentifier", { fg = c.hint, bg = 'NONE' } },
  { "cssProp", { fg = c.info, bg = 'NONE' } },
  { "cssDefinition", { fg = c.info, bg = 'NONE' } },
  { "cssAttr", { fg = c.hint, bg = 'NONE' } },
  { "cssAttrRegion", { fg = c.hint, bg = 'NONE' } },
  { "cssColor", { fg = c.hint, bg = 'NONE' } },
  { "cssFunction", { fg = c.preproc, bg = 'NONE' } },
  { "cssFunctionName", { fg = c.hint, bg = 'NONE' } },
  { "cssVendor", { fg = c.hint, bg = 'NONE' } },
  { "cssValueNumber", { fg = c.hint, bg = 'NONE' } },
  { "cssValueLength", { fg = c.hint, bg = 'NONE' } },
  { "cssUnitDecorators", { fg = c.hint, bg = 'NONE' } },
  { "cssStyle", { fg = c.info, bg = 'NONE' } },
  { "cssImportant", { fg = c.preproc, bg = 'NONE' } },
  { "jsonKeyword", { fg = c.preproc, bg = 'NONE' } },
  { "yamlBlockMappingKey", { fg = c.preproc, bg = 'NONE' } },
  { "tomlTSProperty", { fg = c.preproc, bg = 'NONE' } },}

M.setup = function()
  for _,v in pairs(M.options) do
    vim.api.nvim_set_hl(0, v[1], v[2])
  end
end

return M

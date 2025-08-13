vim.g.colors_name = "ansi"

vim.cmd("highlight clear")
vim.opt.background = "dark"
vim.opt.termguicolors = false

local colors = {
  black = 0,
  red = 1,
  green = 2,
  yellow = 3,
  blue = 4,
  magenta = 5,
  cyan = 6,
  white = 7,
  b_black = 8,
  b_red = 9,
  b_green = 10,
  b_yellow = 11,
  b_blue = 12,
  b_magenta = 13,
  b_cyan = 14,
  b_white = 15,
}

-- core
vim.api.nvim_set_hl(0, "NonText", {ctermfg=colors["white"]})
vim.api.nvim_set_hl(0, "Underlined", {underline=true})
vim.api.nvim_set_hl(0, "Bold", {bold=true})
vim.api.nvim_set_hl(0, "Italic", {italic=true})
vim.api.nvim_set_hl(0, "StatusLine", {ctermfg=colors["white"], ctermbg=colors["b_black"]})
vim.api.nvim_set_hl(0, "StatusLineNC", {ctermfg=colors["b_white"], ctermbg=colors["black"]})
vim.api.nvim_set_hl(0, "VertSplit", {ctermfg=colors["b_black"]})
vim.api.nvim_set_hl(0, "TabLine", {ctermfg=colors["white"], ctermbg=colors["black"]})
vim.api.nvim_set_hl(0, "TabLineFill", {ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "TabLineSel", {ctermfg=colors["black"], ctermbg=colors["b_yellow"]})
vim.api.nvim_set_hl(0, "Title", {ctermfg=colors["blue"], bold=true})
vim.api.nvim_set_hl(0, "Cursor", {ctermbg=colors["b_white"], ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "CursorColumn", {ctermbg=colors["black"]})
vim.api.nvim_set_hl(0, "LineNr", {ctermfg=colors["b_black"]})
vim.api.nvim_set_hl(0, "CursorLineNr", {ctermfg=colors["cyan"]})
vim.api.nvim_set_hl(0, "Visual", {ctermbg=colors["b_black"], ctermfg=colors["b_white"], bold=true})
vim.api.nvim_set_hl(0, "VisualNOS", {ctermbg=colors["b_black"], ctermfg=colors["b_white"], bold=true})
vim.api.nvim_set_hl(0, "Pmenu", {ctermbg=colors["black"], ctermfg=colors["b_white"]})
vim.api.nvim_set_hl(0, "PmenuSbar", {ctermbg=colors["b_black"], ctermfg=colors["white"]})
vim.api.nvim_set_hl(0, "PmenuSel", {ctermbg=colors["b_black"], ctermfg=colors["b_white"], bold=true})
vim.api.nvim_set_hl(0, "PmenuThumb", {ctermbg=colors["white"]})
vim.api.nvim_set_hl(0, "FoldColumn", {ctermfg=colors["white"]})
vim.api.nvim_set_hl(0, "Folded", {ctermfg=colors["b_blue"]})
vim.api.nvim_set_hl(0, "WildMenu", {ctermbg=colors["black"], ctermfg=colors["b_white"]})
vim.api.nvim_set_hl(0, "SpecialKey", {ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "IncSearch", {ctermbg=colors["red"], ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "CurSearch", {ctermbg=colors["yellow"], ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "Search", {ctermbg=colors["b_yellow"], ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "Directory", {ctermfg=colors["blue"]})
vim.api.nvim_set_hl(0, "MatchParen", {ctermbg=colors["black"], ctermfg=colors["yellow"], underline=true})
vim.api.nvim_set_hl(0, "SpellBad", {undercurl=true})
vim.api.nvim_set_hl(0, "SpellCap", {undercurl=true})
vim.api.nvim_set_hl(0, "SpellLocal", {undercurl=true})
vim.api.nvim_set_hl(0, "SpellRare", {undercurl=true})
vim.api.nvim_set_hl(0, "ColorColumn", {ctermbg=colors["b_black"]})
vim.api.nvim_set_hl(0, "SignColumn", {ctermfg=colors["white"]})
vim.api.nvim_set_hl(0, "ModeMsg", {ctermbg=colors["b_white"], ctermfg=colors["black"], bold=true})
vim.api.nvim_set_hl(0, "MoreMsg", {ctermfg=colors["blue"]})
vim.api.nvim_set_hl(0, "Question", {ctermfg=colors["blue"]})
vim.api.nvim_set_hl(0, "QuickFixLine", {ctermbg=colors["black"], ctermfg=colors["b_cyan"]})
vim.api.nvim_set_hl(0, "Conceal", {ctermfg=colors["b_black"]})
vim.api.nvim_set_hl(0, "ToolbarLine", {ctermbg=colors["black"], ctermfg=colors["b_white"]})
vim.api.nvim_set_hl(0, "ToolbarButton", {ctermbg=colors["b_black"], ctermfg=colors["b_white"]})
vim.api.nvim_set_hl(0, "debugPC", {ctermfg=colors["white"]})
vim.api.nvim_set_hl(0, "debugBreakpoint", {ctermfg=colors["b_black"]})
vim.api.nvim_set_hl(0, "ErrorMsg", {ctermfg=colors["red"], bold=true,italic=true})
vim.api.nvim_set_hl(0, "WarningMsg", {ctermfg=colors["b_yellow"]})
vim.api.nvim_set_hl(0, "DiffAdd", {ctermbg=colors["b_green"], ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "DiffChange", {ctermbg=colors["b_blue"], ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "DiffDelete", {ctermbg=colors["b_red"], ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "DiffText", {ctermbg=colors["b_cyan"], ctermfg=colors["black"]})
vim.api.nvim_set_hl(0, "healthError", {ctermfg=colors["red"]})
vim.api.nvim_set_hl(0, "healthSuccess", {ctermfg=colors["green"]})
vim.api.nvim_set_hl(0, "healthWarning", {ctermfg=colors["yellow"]})

-- syntax
vim.api.nvim_set_hl(0, "Comment", {ctermfg=colors["b_black"], italic=true})
vim.api.nvim_set_hl(0, "Constant", {ctermfg=colors["yellow"]})
vim.api.nvim_set_hl(0, "Error", {ctermbg=colors["red"]})
vim.api.nvim_set_hl(0, "Identifier", {ctermfg=colors["b_red"]})
vim.api.nvim_set_hl(0, "Function", {ctermfg=colors["blue"]})
vim.api.nvim_set_hl(0, "Special", {ctermfg=colors["b_magenta"]})
vim.api.nvim_set_hl(0, "Statement", {ctermfg=colors["magenta"]})
vim.api.nvim_set_hl(0, "String", {ctermfg=colors["green"]})
vim.api.nvim_set_hl(0, "Operator", {ctermfg=colors["cyan"]})
vim.api.nvim_set_hl(0, "Boolean", {ctermfg=colors["yellow"]})
vim.api.nvim_set_hl(0, "Label", {ctermfg=colors["b_cyan"]})
vim.api.nvim_set_hl(0, "Keyword", {ctermfg=colors["magenta"]})
vim.api.nvim_set_hl(0, "Exception", {ctermfg=colors["magenta"]})
vim.api.nvim_set_hl(0, "Conditional", {ctermfg=colors["magenta"]})
vim.api.nvim_set_hl(0, "PreProc", {ctermfg=colors["b_magenta"]})
vim.api.nvim_set_hl(0, "Include", {ctermfg=colors["magenta"]})
vim.api.nvim_set_hl(0, "Macro", {ctermfg=colors["magenta"]})
vim.api.nvim_set_hl(0, "StorageClass", {ctermfg=colors["b_yellow"]})
vim.api.nvim_set_hl(0, "Structure", {ctermfg=colors["b_yellow"]})
vim.api.nvim_set_hl(0, "Todo", {ctermfg=colors["black"], ctermbg=colors["b_red"], bold=true})
vim.api.nvim_set_hl(0, "Type", {ctermfg=colors["b_yellow"]})
vim.api.nvim_set_hl(0, "NormalFloat", {ctermbg=colors["black"], ctermfg=colors["b_white"]})
vim.api.nvim_set_hl(0, "FloatBorder", {ctermbg=colors["black"], ctermfg=colors["white"]})
vim.api.nvim_set_hl(0, "FloatShadow", {ctermbg=colors["black"], ctermfg=colors["b_white"]})

-- diff
vim.api.nvim_set_hl(0, "diffAdded", {ctermfg=colors["green"]})
vim.api.nvim_set_hl(0, "diffRemoved", {ctermfg=colors["red"]})
vim.api.nvim_set_hl(0, "diffChanged", {ctermfg=colors["blue"]})
vim.api.nvim_set_hl(0, "diffOldFile", {ctermfg=colors["white"], bold=true})
vim.api.nvim_set_hl(0, "diffNewFile", {ctermfg=colors["white"], bold=true})
vim.api.nvim_set_hl(0, "diffFile", {ctermfg=colors["white"], bold=true})
vim.api.nvim_set_hl(0, "diffLine", {ctermfg=colors["cyan"]})
vim.api.nvim_set_hl(0, "diffIndexLine", {ctermfg=colors["white"], bold=true})
vim.api.nvim_set_hl(0, "diffSubname", {ctermfg=colors["white"], bold=true})

-- gitcommit
vim.api.nvim_set_hl(0, "gitcommitSelectedFile", {link="diffAdded"})
vim.api.nvim_set_hl(0, "gitcommitSelectedType", {link="gitcommitSelectedFile"})
vim.api.nvim_set_hl(0, "gitcommitDiscardedFile", {link="diffRemoved"})
vim.api.nvim_set_hl(0, "gitcommitDiscardedType", {link="gitcommitDiscardedFile"})
vim.api.nvim_set_hl(0, "gitcommitUntrackedFile", {link="diffRemoved"})
vim.api.nvim_set_hl(0, "gitcommitBranch", {link="Comment"})
vim.api.nvim_set_hl(0, "gitcommitHeader", {link="Comment"})
vim.api.nvim_set_hl(0, "gitcommitSummary", {link="Normal"})

" highlight clear

if exists("syntax_on")
  syntax reset
endif

" colorscheme name
let colors_name = "min"

"base
highlight Cursor cterm=NONE ctermbg=7 ctermfg=0
highlight Normal cterm=NONE ctermbg=0 ctermfg=7
highlight Error cterm=NONE ctermbg=0 ctermfg=1
highlight TODO cterm=NONE ctermbg=0 ctermfg=2
highlight CursorLine cterm=NONE ctermbg=8 ctermfg=7

" syntax
highlight! link Statement Normal
highlight! link Type Normal
highlight! link Constant Normal
highlight! link Comment Normal
highlight! link Identifier Normal
highlight! link Preproc Normal
highlight! link Special Normal

" other
highlight! link Visual Cursor
highlight! link Search Cursor
highlight! link LineNr Normal
highlight! link CursorLineNr Normal
highlight! link NonText Normal
highlight! link Pmenu CursorLine
highlight PmenuSel cterm=bold ctermbg=8 ctermfg=2

" highlight the current line
set cursorline

" highlight clear

if exists("syntax_on")
  syntax reset
endif

" colorscheme name
let colors_name = "min"

"base special
highlight Cursor cterm=NONE ctermbg=7 ctermfg=0
highlight Comment cterm=NONE ctermbg=None ctermfg=6
highlight CursorLine cterm=NONE ctermbg=8 ctermfg=NONE
highlight PmenuSel cterm=bold ctermbg=8 ctermfg=2

" base syntax
highlight Normal cterm=NONE ctermbg=None ctermfg=7
highlight Error cterm=NONE ctermbg=None ctermfg=1
highlight TODO cterm=NONE ctermbg=None ctermfg=2

" syntax derived
highlight! link Statement Normal
highlight! link Type Normal
highlight! link Constant Normal
highlight! link Identifier Normal
highlight! link Preproc Normal
highlight! link Special Normal

" special derived
highlight! link Visual Cursor
highlight! link Search Cursor
highlight! link LineNr Normal
highlight! link CursorLineNr Normal
highlight! link NonText Normal
highlight! link Pmenu CursorLine

" highlight the current line
set cursorline

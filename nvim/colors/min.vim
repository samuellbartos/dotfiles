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
highlight PmenuSel cterm=bold ctermbg=8 ctermfg=7
highlight Visual cterm=NONE ctermbg=1 ctermfg=0

" base syntax
highlight Normal cterm=NONE ctermbg=None ctermfg=7
highlight Error cterm=NONE ctermbg=None ctermfg=1
highlight Title cterm=NONE ctermbg=None ctermfg=2

" special derived
highlight! link Search Visual
highlight! link NonText Normal
highlight! link Pmenu CursorLine
highlight! link LineNr Comment
highlight! link CursorLineNr PmenuSel
highlight! link MatchParen Visual

" syntax derived
highlight! link Statement Normal
highlight! link Type Normal
highlight! link Constant Normal
highlight! link Identifier Normal
highlight! link Preproc Normal
highlight! link Special Normal
highlight! link TODO Error

" git
highlight! link diffRemoved Error
highlight! link diffAdded Title

" fzf
highlight! link fzf1 Cursor
highlight! link fzf2 Cursor
highlight! link fzf3 Cursor

" python
highlight! link pythonStatement Comment
highlight! link pythonString Title

" highlight the current line
set cursorline

" highlight clear

if exists("syntax_on")
  syntax reset
endif

" colorscheme name
let colors_name = "nord"

" base
highlight 70N ctermbg=7    ctermfg=0    cterm=NONE
highlight N4N ctermbg=NONE ctermfg=4    cterm=NONE
highlight 8NN ctermbg=8    ctermfg=NONE cterm=NONE
highlight 87b ctermbg=8    ctermfg=7    cterm=bold
highlight 10N ctermbg=1    ctermfg=0    cterm=NONE
highlight N7N ctermbg=NONE ctermfg=7    cterm=NONE
highlight N1N ctermbg=NONE ctermfg=1    cterm=NONE
highlight N2N ctermbg=NONE ctermfg=2    cterm=NONE
highlight N3N ctermbg=NONE ctermfg=3    cterm=NONE

"special
highlight! link Comment N4N
highlight! link CursorLine 8NN
highlight! link CursorLineNr 87b
highlight! link LineNr N4N
highlight! link MatchParen 10N
highlight! link NonText N7N
highlight! link Pmenu 8NN
highlight! link PmenuSel 70N
highlight! link Search 70N
highlight! link Visual 8NN

" syntax
highlight! link Constant N7N
highlight! link Error N1N
highlight! link Identifier N7N
highlight! link Normal N7N
highlight! link Preproc N7N
highlight! link Special N7N
highlight! link Statement N7N
highlight! link Title N3N
highlight! link TODO N1N
highlight! link Type N7N

" git
highlight! link diffAdded N2N
highlight! link diffRemoved N1N

" fzf
highlight! link fzf1 70N
highlight! link fzf2 70N
highlight! link fzf3 70N

" python
highlight! link pythonStatement N4N
highlight! link pythonString N3N

" highlight the current line
set cursorline

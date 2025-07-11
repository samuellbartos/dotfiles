" colorscheme name
let colors_name = "default"

" base
highlight 70N ctermbg=7    ctermfg=0 cterm=NONE
highlight N1N ctermbg=NONE ctermfg=1 cterm=NONE
highlight N2N ctermbg=NONE ctermfg=2 cterm=NONE

" git
highlight! link diffAdded N2N
highlight! link diffRemoved N1N

" fzf
highlight! link fzf1 70N
highlight! link fzf2 70N
highlight! link fzf3 70N

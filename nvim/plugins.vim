call plug#begin(stdpath('data') . '/plugged')

" fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" fuzzy find
Plug 'junegunn/fzf.vim'

" Default IMproved 4bit theme
Plug 'jeffkreeftmeijer/vim-dim'

call plug#end()

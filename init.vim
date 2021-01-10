" plugins
call plug#begin(stdpath('data') . '/plugged')
call plug#end()

" general settings
set encoding=utf-8
set list lcs=trail:.,tab:>- " display whitespace chars
syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
set ignorecase " ignore case in search
set cursorline " highlight the current line

" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" custom bindings
nnoremap <Esc><Esc> :let @/=""<CR> " clear in buffer search highlights

" PLUGINS

call plug#begin(stdpath('data') . '/plugged')

" fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" fuzzy find
Plug 'junegunn/fzf.vim'

call plug#end()


" CORE

" define colorscheme
colorscheme nord

" vim-plug implicitly runs filetype indent on + syntax enable => disable unwanted auto-indent
filetype indent off

" encoding
set encoding=utf-8

" display whitespace chars
set list lcs=trail:.,tab:>-

" highlight syntax
syntax on

" show line numbers
set number

" disable the swapfile
set noswapfile

" ignore case in search
set ignorecase

" new window left of the original after vertical split
set splitright

" new window below the original after horizontal split
set splitbelow

" BINDINGS

" clear in buffer search highlights
nnoremap <Esc><Esc> :let @/=""<CR>

" remap Leader key to spacebar
nnoremap <SPACE> <Nop>
let mapleader=" "

" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap! <up> <nop>
noremap! <down> <nop>
noremap! <left> <nop>
noremap! <right> <nop>

" print highlight group under cursor
nnoremap zS :echo join(reverse(map(synstack(line('.'), col('.')), 'synIDattr(v:val,"name")')),' ')<cr>

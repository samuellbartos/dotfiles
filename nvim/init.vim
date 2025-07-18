" PLUGINS

call plug#begin(stdpath('data') . '/plugged')

" fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" fuzzy find
Plug 'junegunn/fzf.vim'

" vimtex
Plug 'lervag/vimtex'

" hardtime
Plug 'm4xshen/hardtime.nvim'

call plug#end()


" CORE

" dependencies
lua require("hardtime").setup()

" vim-plug implicitly runs filetype indent on + syntax enable => disable unwanted auto-indent
filetype indent off

" encoding
set encoding=utf-8

" display whitespace chars
set list lcs=trail:.,tab:>-

" define colorscheme
colorscheme ansi

" highlight syntax
syntax on

" highlight the current line
set cursorline

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

" sync clipboard also (+) with the unnamed " register
set clipboard+=unnamedplus

" show current line number
set number

" show relative line numbers
set relativenumber

" no wrapping of long lines
set nowrap


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

" center cursor while scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" center cursor while searching
nnoremap n nzzzv
nnoremap N Nzzzv

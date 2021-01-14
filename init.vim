" PLUGINS

call plug#begin(stdpath('data') . '/plugged')

" fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" fuzzy find
Plug 'junegunn/fzf.vim'

call plug#end()


" GENERAL SETTINGS

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

" highlight the current line
set cursorline

" new window left of the original after vertical split
set splitright

" new window below the original after horizontal split
set splitbelow


" CUSTOM BINDINGS

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


" RIPGREP

" include hidden, ignore .git, include preview
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --glob \!.git ---column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

" replace default grep with ripgrep
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case


" FZF

" display in a new window instead of popup
let g:fzf_layout={'down': '40%'}

" match binding from zsh
nnoremap <C-t> :GFiles<CR>

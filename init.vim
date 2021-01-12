" PLUGINS
call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy find
Plug 'junegunn/fzf.vim' " fuzzy find vim commands
call plug#end()

" GENERAL SETTINGS
set encoding=utf-8
set list lcs=trail:.,tab:>- " display whitespace chars
syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
set ignorecase " ignore case in search
set cursorline " highlight the current line
set splitright " new window left of the original after vertical split
set splitbelow " new window below the original after horizontal split

" CUSTOM BINDINGS
nnoremap <Esc><Esc> :let @/=""<CR> " clear in buffer search highlights
" remap Leader key to spacebar
nnoremap <SPACE> <Nop>
let mapleader=" "
tnoremap <Esc> <C-\><C-n> " exit :terminal as any other window
" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap! <up> <nop>
noremap! <down> <nop>
noremap! <left> <nop>
noremap! <right> <nop>

" CONFIGURE RIPGREP
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --glob \!.git ---column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)
" replace default grep with ripgrep
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case

" FZF CONFIGURATION
let g:fzf_layout={'down': '40%'} " display in a new window instead of popup
nnoremap <C-t> :GFiles<CR>

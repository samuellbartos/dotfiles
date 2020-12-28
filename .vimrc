if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox' " gruvbox theme
Plug 'preservim/nerdtree' " file system explorer
Plug 'romainl/vim-cool' " unhighlight after search
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy find
Plug 'junegunn/fzf.vim' " fuzzy find vim commands
call plug#end()

set encoding=utf-8

set termguicolors
let g:gruvbox_contrast_dark='hard'
autocmd vimenter * ++nested colorscheme gruvbox

" display whitespace chars
set list
set listchars=tab:>-,trail:.,eol:$

set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type
set cursorline " highlight the current line

" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" python PEP8 compliant indentation
au BufNewFile,BufRead *.py set
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=119
    \ expandtab
    \ autoindent
    \ fileformat=unix

" NERDTree configuration
nnoremap <Leader>t :NERDTreeToggle<Enter> " keybinding for toggling NERDTree

" fzf configuration
let g:fzf_layout={'down': '40%'} " display in terminal instead of popup
nnoremap <C-t> :Files<Enter> " keybinding for filename searching
" make :Rg search through hidden files
command! -bang -nargs=* Rg call fzf#vim#grep('rg --hidden --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)

" display in a new window instead of popup
let g:fzf_layout={'down': '40%'}

" match binding from zsh
nnoremap <C-t> :Files<CR>

" customize fzf colors
let g:fzf_colors =
    \ { 'fg':    ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Error'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'Normal'],
    \ 'hl+':     ['fg', 'Error'],
    \ 'info':    ['fg', 'Normal'],
    \ 'border':  ['fg', 'Normal'],
    \ 'prompt':  ['fg', 'Normal'],
    \ 'pointer': ['fg', 'Error'],
    \ 'marker':  ['fg', 'Error'],
    \ 'spinner': ['fg', 'Normal'],
    \ 'header':  ['fg', 'Normal'] }

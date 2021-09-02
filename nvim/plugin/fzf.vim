" display in a new window instead of popup
let g:fzf_layout={'down': '40%'}

" match binding from zsh
nnoremap <C-t> :Files<CR>

" customize fzf colors
let g:fzf_colors =
    \ { 'fg':    ['fg', 'N7N'],
    \ 'bg':      ['bg', 'N7N'],
    \ 'hl':      ['fg', 'N3N'],
    \ 'fg+':     ['fg', 'N7N'],
    \ 'bg+':     ['bg', 'N7N'],
    \ 'hl+':     ['fg', 'N3N'],
    \ 'info':    ['fg', 'N7N'],
    \ 'border':  ['fg', 'N7N'],
    \ 'prompt':  ['fg', 'N7N'],
    \ 'pointer': ['fg', 'N3N'],
    \ 'marker':  ['fg', 'N3N'],
    \ 'spinner': ['fg', 'N7N'],
    \ 'header':  ['fg', 'N7N'] }

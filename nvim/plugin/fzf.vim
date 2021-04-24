" display in a new window instead of popup
let g:fzf_layout={'down': '40%'}

" match binding from zsh
nnoremap <C-t> :Files<CR>

" customize fzf colors
let g:fzf_colors =
    \ { 'fg':    ['fg', 'N7N'],
    \ 'bg':      ['bg', 'N7N'],
    \ 'hl':      ['fg', 'N2N'],
    \ 'fg+':     ['fg', 'N7N'],
    \ 'bg+':     ['bg', 'N7N'],
    \ 'hl+':     ['fg', 'N2N'],
    \ 'info':    ['fg', 'N7N'],
    \ 'border':  ['fg', 'N7N'],
    \ 'prompt':  ['fg', 'N7N'],
    \ 'pointer': ['fg', 'N2N'],
    \ 'marker':  ['fg', 'N2N'],
    \ 'spinner': ['fg', 'N7N'],
    \ 'header':  ['fg', 'N7N'] }

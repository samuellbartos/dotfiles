" display in a new window instead of popup
let g:fzf_layout={'down': '40%'}

" match binding from zsh
nnoremap <C-t> :Files<CR>

" customize fzf colors
let g:fzf_colors =
    \ { 'fg':    ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'TODO'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'Normal'],
    \ 'hl+':     ['fg', 'TODO'],
    \ 'info':    ['fg', 'Normal'],
    \ 'border':  ['fg', 'Normal'],
    \ 'prompt':  ['fg', 'Normal'],
    \ 'pointer': ['fg', 'TODO'],
    \ 'marker':  ['fg', 'TODO'],
    \ 'spinner': ['fg', 'Normal'],
    \ 'header':  ['fg', 'Normal'] }

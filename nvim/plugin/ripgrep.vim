" include hidden, ignore .git, include preview
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --glob \!.git --line-number --no-heading --smart-case --color=always -- '
  \   .shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

" replace default grep with ripgrep
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case

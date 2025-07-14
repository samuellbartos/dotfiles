let g:colors_name = 'ansi'

highlight clear
set background=dark
set notermguicolors

" 0: Black        │   8: Bright Black (dark gray)
" 1: Red          │   9: Bright Red
" 2: Green        │  10: Bright Green
" 3: Yellow       │  11: Bright Yellow
" 4: Blue         │  12: Bright Blue
" 5: Magenta      │  13: Bright Magenta
" 6: Cyan         │  14: Bright Cyan
" 7: White (gray) │  15: Bright White

" core
highlight NonText ctermfg=0
highlight Ignore ctermfg=NONE  ctermbg=NONE cterm=NONE
highlight Underlined cterm=underline
highlight Bold cterm=bold
highlight Italic cterm=italic
highlight StatusLine ctermfg=15 ctermbg=8 cterm=NONE
highlight StatusLineNC ctermfg=15 ctermbg=0 cterm=NONE
highlight VertSplit ctermfg=8
highlight TabLine ctermfg=7 ctermbg=0
highlight TabLineFill ctermfg=0 ctermbg=NONE
highlight TabLineSel ctermfg=0 ctermbg=11
highlight Title ctermfg=4 cterm=bold
highlight CursorLine ctermbg=NONE ctermfg=NONE
highlight Cursor ctermbg=15 ctermfg=0
highlight CursorColumn ctermbg=0
highlight LineNr ctermfg=8
highlight CursorLineNr ctermfg=6
highlight helpLeadBlank ctermbg=NONE ctermfg=NONE
highlight helpNormal ctermbg=NONE ctermfg=NONE
highlight Visual ctermbg=8 ctermfg=15 cterm=bold
highlight VisualNOS ctermbg=8 ctermfg=15 cterm=bold
highlight Pmenu ctermbg=0 ctermfg=15
highlight PmenuSbar ctermbg=8 ctermfg=7
highlight PmenuSel ctermbg=8 ctermfg=15 cterm=bold
highlight PmenuThumb ctermbg=7 ctermfg=NONE
highlight FoldColumn ctermfg=7
highlight Folded ctermfg=12
highlight WildMenu ctermbg=0 ctermfg=15 cterm=NONE
highlight SpecialKey ctermfg=0
highlight IncSearch ctermbg=1 ctermfg=0
highlight CurSearch ctermbg=3 ctermfg=0
highlight Search ctermbg=11 ctermfg=0
highlight Directory ctermfg=4
highlight MatchParen ctermbg=0 ctermfg=3 cterm=underline
highlight SpellBad cterm=undercurl
highlight SpellCap cterm=undercurl
highlight SpellLocal cterm=undercurl
highlight SpellRare cterm=undercurl
highlight ColorColumn ctermbg=8
highlight SignColumn ctermfg=7
highlight ModeMsg ctermbg=15 ctermfg=0 cterm=bold
highlight MoreMsg ctermfg=4
highlight Question ctermfg=4
highlight QuickFixLine ctermbg=0 ctermfg=14
highlight Conceal ctermfg=8
highlight ToolbarLine ctermbg=0 ctermfg=15
highlight ToolbarButton ctermbg=8 ctermfg=15
highlight debugPC ctermfg=7
highlight debugBreakpoint ctermfg=8
highlight ErrorMsg ctermfg=1 cterm=bold,italic
highlight WarningMsg ctermfg=11
highlight DiffAdd ctermbg=10 ctermfg=0
highlight DiffChange ctermbg=12 ctermfg=0
highlight DiffDelete ctermbg=9 ctermfg=0
highlight DiffText ctermbg=14 ctermfg=0
highlight diffAdded ctermfg=10
highlight diffRemoved ctermfg=9
highlight diffChanged ctermfg=12
highlight diffOldFile ctermfg=11
highlight diffNewFile ctermfg=13
highlight diffFile ctermfg=12
highlight diffLine ctermfg=7
highlight diffIndexLine ctermfg=14
highlight healthError ctermfg=1
highlight healthSuccess ctermfg=2
highlight healthWarning ctermfg=3

" syntax
highlight Comment ctermfg=8 cterm=italic
highlight Constant ctermfg=3
highlight Error ctermbg=1
highlight Identifier ctermfg=9
highlight Function ctermfg=4
highlight Special ctermfg=13
highlight Statement ctermfg=5
highlight String ctermfg=2
highlight Operator ctermfg=6
highlight Boolean ctermfg=3
highlight Label ctermfg=14
highlight Keyword ctermfg=5
highlight Exception ctermfg=5
highlight Conditional ctermfg=5
highlight PreProc ctermfg=13
highlight Include ctermfg=5
highlight Macro ctermfg=5
highlight StorageClass ctermfg=11
highlight Structure ctermfg=11
highlight Todo ctermfg=0 ctermbg=9 cterm=bold
highlight Type ctermfg=11
highlight NormalFloat ctermbg=0 ctermfg=15
highlight FloatBorder ctermbg=0 ctermfg=7
highlight FloatShadow ctermbg=0 ctermfg=15

" fzf
highlight fzf1 ctermbg=7 ctermfg=0 cterm=NONE
highlight fzf2 ctermbg=7 ctermfg=0 cterm=NONE
highlight fzf3 ctermbg=7 ctermfg=0 cterm=NONE

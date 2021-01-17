DIR="$HOME/dotfiles/zsh" # directory containing this script, needed for the following imports
[ -f "$DIR/core" ] && source "$DIR/core" # core settings
[ -f "$DIR/prompt" ] && source "$DIR/prompt" # prompt
[ -f "$DIR/git" ] && source "$DIR/git" # git
[ -f "$DIR/fzf" ] && source "$DIR/fzf" # fzf
[ -f "$DIR/python" ] && source "$DIR/python" # python
[ -f "$DIR/haskell" ] && source "$DIR/haskell" # haskell

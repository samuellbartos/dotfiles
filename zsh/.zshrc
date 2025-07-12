# load plugins
[ -f "$XDG_CONFIG_HOME/zsh/core" ] && source "$XDG_CONFIG_HOME/zsh/core" # core settings
[ -f "$XDG_CONFIG_HOME/zsh/prompt" ] && source "$XDG_CONFIG_HOME/zsh/prompt" # prompt
[ -f "$XDG_CONFIG_HOME/zsh/git" ] && source "$XDG_CONFIG_HOME/zsh/git" # git
[ -f "$XDG_CONFIG_HOME/zsh/rg" ] && source "$XDG_CONFIG_HOME/zsh/rg" # rg
[ -f "$XDG_CONFIG_HOME/zsh/fzf" ] && source "$XDG_CONFIG_HOME/zsh/fzf" # fzf
[ -f "$XDG_CONFIG_HOME/zsh/aws" ] && source "$XDG_CONFIG_HOME/zsh/aws" # aws
[ -f "$XDG_CONFIG_HOME/zsh/python" ] && source "$XDG_CONFIG_HOME/zsh/python" # python
[ -f "$XDG_CONFIG_HOME/zsh/haskell" ] && source "$XDG_CONFIG_HOME/zsh/haskell" # haskell
[ -f "$XDG_CONFIG_HOME/zsh/wip" ] && source "$XDG_CONFIG_HOME/zsh/wip" # WIP

# clean up PATH env var
typeset -U path PATH  # PATH env var is somehow mirrored in path array, this makes both have unique values as recommended in docs

export HISTFILE="$XDG_STATE_HOME"/zsh/history  # zsh history file location

autoload -Uz compinit && compinit -d $XDG_CACHE_HOME/zsh/zcompdump  # setup autocompletions

[ -f "$XDG_CONFIG_HOME/zsh/core" ] && source "$XDG_CONFIG_HOME/zsh/core" # core settings
[ -f "$XDG_CONFIG_HOME/zsh/prompt" ] && source "$XDG_CONFIG_HOME/zsh/prompt" # prompt
[ -f "$XDG_CONFIG_HOME/zsh/git" ] && source "$XDG_CONFIG_HOME/zsh/git" # git
[ -f "$XDG_CONFIG_HOME/zsh/fzf" ] && source "$XDG_CONFIG_HOME/zsh/fzf" # fzf
[ -f "$XDG_CONFIG_HOME/zsh/python" ] && source "$XDG_CONFIG_HOME/zsh/python" # python
[ -f "$XDG_CONFIG_HOME/zsh/haskell" ] && source "$XDG_CONFIG_HOME/zsh/haskell" # haskell
[ -f "$HOME/.secrets" ] && source "$HOME/.secrets" # secret things

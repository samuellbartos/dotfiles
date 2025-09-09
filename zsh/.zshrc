# HISTORY
setopt inc_append_history  # append every command once it is executed
setopt share_history  # reload history whenever used
setopt hist_ignore_space  # ignore command starting with space
setopt hist_ignore_dups  # ignore command from history if it is identical to the previous one
setopt hist_find_no_dups  # Do not display a previously found event.
setopt hist_save_no_dups  # do not write a duplicate event to the history file.
setopt hist_ignore_all_dups  # delete an old recorded event if a new event is a duplicate.

# AUTOCOMPLETIONS
zcompdump="$XDG_CACHE_HOME/zsh/zcompdump"
autoload -Uz compinit
# only run full compinit once per day
[ ! "$(find $zcompdump -mtime -1 2>/dev/null)" ] && compinit -d $zcompdump || compinit -C -d $zcompdump

setopt no_auto_menu  # dont cycle between ambiguous completions
bindkey -e  # emacs key bindings
zle_highlight=('paste:none')  # disable highlighting of pasted text

# edit command line
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# MODULES
[ -f "$XDG_CONFIG_HOME/zsh/path" ] && source "$XDG_CONFIG_HOME/zsh/path"
[ -f "$XDG_CONFIG_HOME/zsh/aliases" ] && source "$XDG_CONFIG_HOME/zsh/aliases"
[ -f "$XDG_CONFIG_HOME/zsh/functions" ] && source "$XDG_CONFIG_HOME/zsh/functions"
[ -f "$XDG_CONFIG_HOME/zsh/prompt" ] && source "$XDG_CONFIG_HOME/zsh/prompt"
[ -f "$XDG_CONFIG_HOME/zsh/exports" ] && source "$XDG_CONFIG_HOME/zsh/exports"
[ -f "$XDG_CONFIG_HOME/zsh/extras" ] && source "$XDG_CONFIG_HOME/zsh/extras"

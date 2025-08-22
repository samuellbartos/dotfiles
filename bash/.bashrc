# XDG base directory specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_BIN_HOME="$HOME/.local/bin"

# load plugins
[[ -r "$XDG_CONFIG_HOME/bash/path" ]] && source "$XDG_CONFIG_HOME/bash/path"
[[ -r "$XDG_CONFIG_HOME/bash/exports" ]] && source "$XDG_CONFIG_HOME/bash/exports"
[[ -r "$XDG_CONFIG_HOME/bash/functions" ]] && source "$XDG_CONFIG_HOME/bash/functions"
# [[ -r "$XDG_CONFIG_HOME/bash/prompt" ]] && source "$XDG_CONFIG_HOME/bash/prompt"
# [[ -r "$XDG_CONFIG_HOME/bash/aliases" ]] && source "$XDG_CONFIG_HOME/bash/aliases"

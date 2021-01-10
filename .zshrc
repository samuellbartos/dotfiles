export PATH="/usr/local/sbin:$PATH" # home-brew doctor recommeds

export PATH="/usr/local/bin/python3:$PATH" # home-brew-installed python 3

# fzf setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob \!.git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--multi --height 40% --layout=reverse --bind ctrl-a:toggle-all --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (cat {}) 2> /dev/null'"
export FZF_CTRL_R_OPTS="--preview-window='hidden'"

# git setup

autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
PROMPT='%B%~ %F{blue}$vcs_info_msg_0_%f$%b '
zstyle ':vcs_info:git:*' formats '(%b) '


alias g='git'
compdef g='git' # git autocompletion setup
alias gc='git checkout'
alias gcb='git checkout -b'
alias gm='git commit'
alias gmf='git commit --fixup'
alias gpl='git pull'
alias gp='git push'
alias ga='git add'
alias gap='git add -p'
alias gs='git status'
alias gb='git branch'
alias gbf='git branch -f'
alias gbm='git branch -m'
alias gr='git restore'
alias grs='git restore --staged'
alias gri='git rebase -i'
alias gria='git rebase -i --autosquash'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gf='git fetch'
alias gfm='(git fetch origin master:master || git fetch && git pull --ff-only) 2> /dev/null'
alias gd='git diff'
alias gdc='git diff --cached'
alias gt='git tag'
alias gsh='git stash'
alias gshp='git stash pop'
alias gshd='git stash drop'
alias gshswp='git stash show -p'
alias gau='git add -u'
alias gma='git commit --amend'
alias gmm='git commit -m'
alias gpf='git push -f'
alias gpu='git push -u'
alias gcp='git cherry-pick'
alias gcpc='git cherry-pick --continue'
alias gcpa='git cherry-pick --abort'
alias grh='git reset --hard'
alias grm='git reset --mixed'
alias gsw='git show'
alias gswp='git show --pretty="" --name-status'
alias gl='git log --all --oneline --graph --pretty="%C(auto)%h -%d %s %C(cyan)(%cr) %C(blue)<%an>%Creset"'
# alias gx='git fetch && git checkout master && git pull && git remote prune origin && git branch --merged | grep -v master | xargs -n 1 git branch -d'
alias gx="git fetch -p && git checkout master && git pull && git branch -vv | awk '/: gone]/{print \$1}' | xargs git branch -D"

alias l='ls -lahFGT'
alias less='less -FIRX'

# haskell
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env


# don't create .pyc files
export PYTHONDONTWRITEBYTECODE=1

# virtualenvwrapper setup
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export VIRTUAL_ENV_DISABLE_PROMPT=1
source /usr/local/bin/virtualenvwrapper.sh

alias mkenv='mkvirtualenv'
alias mktmpenv='mktmpenv -n'
alias rmenv='rmvirtualenv'

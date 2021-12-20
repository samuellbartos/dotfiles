cd $HOME
mkdir -p .config

# zsh
mkdir -p .local/state/zsh
mkdir -p .cache/zsh
ln -sf /Users/samba/dotfiles/zsh/.zshenv $HOME/.zshenv

# alacritty
brew install alacritty

# tmux
brew install tmux

# nvim
brew install nvim

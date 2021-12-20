cd $HOME
mkdir -p .config

# alacritty
brew install alacritty

# tmux
brew install tmux
ln -sf /Users/samba/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf

# nvim
brew install nvim

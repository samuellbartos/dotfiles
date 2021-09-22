cd $HOME
mkdir -p .config

# alacritty
mkdir -p $HOME/config/alacritty
brew install alacritty
ln -sf $HOME/dotfiles/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

# tmux
brew install tmux
ln -sf /Users/samba/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf

# git
ln -sf $HOME/dotfiles/git/.gitconfig $HOME/.gitconfig
ln -sf $HOME/dotfiles/git/.gitignore $HOME/.gitconfig

# nvim
brew install nvim
ln -sf $HOME/dotfiles/nvim .config/nvim

cd $HOME

# alacritty
brew uninstall alacritty
unlink ln -sf $HOME/dotfiles/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

# tmux
brew uninstall tmux
unlink $HOME/.tmux.conf

# git
unlink $HOME/.gitconfig
unlink $HOME/.gitconfig

# nvim
brew uninstall nvim
unlink .config/nvim

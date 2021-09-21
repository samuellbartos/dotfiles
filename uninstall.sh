cd $HOME

# alacritty
unlink ln -sf $HOME/dotfiles/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml
brew uninstall alacritty

# tmux
unlink $HOME/.tmux.conf
brew uninstall tmux

# git
unlink $HOME/.gitconfig
unlink $HOME/.gitconfig

# nvim
unlink .config/nvim
brew uninstall nvim

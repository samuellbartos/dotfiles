MAKEFLAGS += --always-make

version:
	@cat VERSION

alacritty:
	brew install --cask alacritty

rm-alacritty:
	brew uninstall --cask alacritty

bash:
	brew install bash
	mkdir -p ${HOME}/.local/state/bash
	ln -sf ${HOME}/.config/bash/.bashrc ${HOME}/.bash_profile

rm-bash:
	brew uninstall bash
	rm -r ${HOME}/.local/state/bash
	rm ${HOME}/.bash_profile

ripgrep:
	brew install ripgrep

rm-ripgrep:
	brew uninstall ripgrep

fzf:
	brew install fzf

rm-fzf:
	brew uninstall fzf

xdg:
	source ${HOME}/.zshenv

nvim: xdg
	brew install nvim
	sh -c 'curl -fLo "${XDG_DATA_HOME}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

rm-nvim: xdg
	rm "${XDG_DATA_HOME}"/nvim/site/autoload/plug.vim
	brew uninstall nvim

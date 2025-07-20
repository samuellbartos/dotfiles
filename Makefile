MAKEFLAGS += --always-make

version:
	@cat VERSION

alacritty:
	brew install --cask alacritty

rm-alacritty:
	brew uninstall --cask alacritty

zsh:
	mkdir -p ${HOME}/.local/bin
	mkdir -p ${HOME}/.local/state/zsh
	mkdir -p ${HOME}/.cache/zsh
	ln -sf ${HOME}/.config/zsh/.zshenv ${HOME}/.zshenv

rm-zsh:
	rm -r ${HOME}/.local/state/zsh
	rm -r ${HOME}/.cache/zsh
	rm ${HOME}/.zshenv

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

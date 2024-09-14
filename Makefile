.PHONY: version alacritty rm-alacritty zsh rm-zsh ripgrep rm-ripgrep fzf rm-fzf nvim rm-nvim

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
	$$(brew --prefix)/opt/fzf/install --xdg --no-fish --no-bash --key-bindings --completion --no-update-rc

rm-fzf:
	$$(brew --prefix)/opt/fzf/uninstall --xdg
	brew uninstall fzf
	rm -r fzf

nvim:
	brew install nvim
	sh -c 'curl -fLo "${XDG_DATA_HOME}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

rm-nvim:
	rm "${XDG_DATA_HOME}"/nvim/site/autoload/plug.vim
	brew uninstall nvim

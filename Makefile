.PHONY: version alacritty rm-alacritty zsh-bootstrap rm-zsh-bootstrap fzf rm-fzf git rm-git

version:
	@cat VERSION

alacritty:
	brew install --cask alacritty

rm-alacritty:
	brew uninstall --cask alacritty

fzf:
	brew install fzf
	$$(brew --prefix)/opt/fzf/install --xdg --no-fish --no-bash --key-bindings --completion --no-update-rc

rm-fzf:
	$$(brew --prefix)/opt/fzf/uninstall --xdg
	brew uninstall fzf
	rm -r fzf

zsh-bootstrap:
	mkdir -p ${HOME}/.local/state/zsh
	mkdir -p ${HOME}/.cache/zsh
	ln -sf ${HOME}/.config/zsh/.zshenv ${HOME}/.zshenv

rm-zsh-bootstrap:
	rm -r ${HOME}/.local/state/zsh
	rm -r ${HOME}/.cache/zsh
	rm ${HOME}/.zshenv

git:
	brew install git

rm-git:
	brew uninstall git

ghcup:
	brew install ghcup
	ghcup install ghc
	ghcup set ghc recommended
	ghcup install cabal
	ghcup set cabal recommended

rm-ghcup:
	ghcup nuke
	brew unistall ghcup

.PHONY: version zsh-bootstrap rm-zsh-bootstrap fzf rm-fzf

version:
	@cat VERSION

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

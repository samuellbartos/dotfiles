MAKEFLAGS += --always-make

xdg:
ifndef XDG_DATA_HOME
	$(error XDG_DATA_HOME is undefined)
endif

version:
	@cat VERSION

hook:
	git config --local core.hooksPath .githooks

shell:
	mkdir -p "${HOME}/.local/bin"
	mkdir -p "${HOME}/.local/state/zsh"
	mkdir -p "${HOME}/.cache/zsh"
	ln -sf "${HOME}/.config/zsh/.zshenv" "${HOME}/.zshenv"
	exec zsh

rm-shell:
	rm -rf "${HOME}/.zshenv"
	rm -rf "${HOME}/.cache/zsh"
	rm -rf "${HOME}/.local/state/zsh"
	rm -rf "${HOME}/.local/bin"

core: xdg
	brew install git
	brew install tmux
	cp tmux/session "${HOME}/.tmux-session"
	brew install ripgrep
	brew install fzf
	brew install nvim
	sh -c 'curl -fLo "${XDG_DATA_HOME}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	brew install --cask alacritty

rm-core:
	brew uninstall --cask alacritty
	rm "${XDG_DATA_HOME}"/nvim/site/autoload/plug.vim
	brew uninstall nvim
	brew uninstall fzf
	brew uninstall ripgrep
	rm "${HOME}/.tmux-session"
	brew uninstall tmux
	brew uninstall git

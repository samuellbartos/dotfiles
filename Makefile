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
	mkdir -p ${HOME}/.local/bin
	mkdir -p ${HOME}/.local/state/zsh
	mkdir -p ${HOME}/.cache/zsh
	ln -sf ${HOME}/.config/zsh/.zshenv ${HOME}/.zshenv
	exec zsh

rm-shell:
	rm -rf ${HOME}/.zshenv
	rm -rf ${HOME}/.cache/zsh
	rm -rf ${HOME}/.local/state/zsh
	rm -rf ${HOME}/.local/bin

core: xdg
	brew install git
	brew install ripgrep
	brew install fzf
	brew install nvim
	git clone --depth 1 https://github.com/ibhagwan/fzf-lua.git "${XDG_DATA_HOME}/nvim/site/pack/plugins/start/fzf-lua"
	git clone --depth 1 https://github.com/lervag/vimtex.git "${XDG_DATA_HOME}/nvim/site/pack/plugins/start/vimtex"
	git clone --depth 1 https://github.com/m4xshen/hardtime.nvim.git "${XDG_DATA_HOME}/nvim/site/pack/plugins/start/hardtime"
	brew install --cask alacritty

rm-core:
	brew uninstall --cask alacritty
	rm -rf "${XDG_DATA_HOME}/nvim/site/pack/plugins/start"
	brew uninstall nvim
	brew uninstall fzf
	brew uninstall ripgrep
	brew uninstall git

.PHONY: version fzf rm-fzf

version:
	@cat VERSION

fzf:
	brew install fzf
	$$(brew --prefix)/opt/fzf/install --xdg --no-fish --no-bash --key-bindings --completion --no-update-rc

rm-fzf:
	$$(brew --prefix)/opt/fzf/uninstall --xdg
	brew uninstall fzf
	rm -r fzf

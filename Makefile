.PHONY: version
version:
	@cat VERSION

.PHONY: fzf
fzf:
	brew install fzf
	$$(brew --prefix)/opt/fzf/install --xdg --no-fish --no-bash --key-bindings --completion --no-update-rc

.PHONY: rm-fzf
rm-fzf:
	$$(brew --prefix)/opt/fzf/uninstall --xdg
	brew uninstall fzf
	rm -r fzf

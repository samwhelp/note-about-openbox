default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make app'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remote-install'
	@echo
	@echo '	$$ make manjaro-bash-completion-install'
	@echo
	@echo '	$$ make ubuntu-bash-completion-install'
	@echo

.PHONY: help


prepare:
	pamac install bash-completion
.PHONY: prepare


app:
	make -C ./gen/openboxrc-ctrl app
.PHONY: app


manjaro-bash-completion-install:
	sudo install -Dm644 ./completion/bash/openboxrc-ctrl /usr/local/share/bash-completion/completions/openboxrc-ctrl
.PHONY: manjaro-bash-completion-install


ubuntu-bash-completion-install:
	sudo install -Dm644 ./completion/bash/openboxrc-ctrl /etc/bash_completion.d/openboxrc-ctrl
.PHONY: ubuntu-bash-completion-install


install: app
	install -Dm755 ./openboxrc-ctrl ~/.local/bin/openboxrc-ctrl
.PHONY: install


remote-install:
	./remote-install.sh
.PHONY: remote-install

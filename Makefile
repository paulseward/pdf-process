.PHONY: update install

SHELL = /bin/bash

install:
	@if ! grep -q 'pdf-process' ${HOME}/.bashrc; then echo "Adding to path in bashrc..." && echo 'export PATH=$${PATH}:'"${CURDIR} # pdf-process" >> ${HOME}/.bashrc; fi

update:
	git pull

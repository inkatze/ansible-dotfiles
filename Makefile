.DEFAULT_GOAL := install
MAKEFLAGS = "-s"
SHELL = /bin/bash

install:
	# Install all the dot files
	cd playbook && \
	ansible-playbook main.yml -t upgrade,gpg,ssh,dotfiles,tmux,neovim

gpg:
	cd playbook && \
	ansible-playbook main.yml -t gpg

ssh:
	cd playbook && \
	ansible-playbook main.yml -t ssh

dotfiles:
	cd playbook && \
	ansible-playbook main.yml -t dotfiles

tmux:
	cd playbook && \
    ansible-playbook main.yml -t tmux

upgrade:
	cd playbook && \
	ansible-playbook main.yml -t upgrade

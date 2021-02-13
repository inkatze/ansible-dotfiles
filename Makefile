.DEFAULT_GOAL := install
MAKEFLAGS = "-s"
SHELL = /bin/bash

install:
	# Install all the dot files
	cd playbook && \
	ansible-playbook main.yml -t upgrade,gpg,ssh,dotfiles,tmux,neovim,osx,mas

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

neovim:
	cd playbook && \
	ansible-playbook main.yml -t neovim

osx:
	cd playbook && \
	ansible-playbook main.yml -t osx

mas:
	cd playbook && \
	ansible-playbook main.yml -t mas

upgrade:
	cd playbook && \
	ansible-playbook main.yml -t upgrade

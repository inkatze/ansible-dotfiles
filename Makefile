.DEFAULT_GOAL := install
MAKEFLAGS = "-s"
SHELL = /bin/bash

install:
	# Install all the dot files
	cd playbook && \
	ansible-playbook main.yml -t upgrade,homebrew,gpg,ssh,dotfiles,tmux,fish,neovim,osx,mas

homebrew:
	cd playbook && \
	ansible-playbook main.yml -t homebrew

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

fish:
	# Make sure you run the shell tag
	cd playbook && \
	ansible-playbook main.yml -t fish

neovim:
	cd playbook && \
	ansible-playbook main.yml -t neovim

osx:
	cd playbook && \
	ansible-playbook main.yml -t osx

mas:
	cd playbook && \
	ansible-playbook main.yml -t mas

shell:
	# Requires privilege escalation because of the /etc/shells file
	cd playbook && \
    ansible-playbook main.yml -t shell -K

upgrade:
	cd playbook && \
	ansible-playbook main.yml -t upgrade

#!/bin/sh

if [ ! -d "$HOME/kvel" ]; then
	echo "Installing..."
	git clone --depth=1 git@github.com:kvelcich/dotfiles.git "$HOME/.kvel"
fi

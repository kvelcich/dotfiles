#!/bin/sh

OS=""
WORKDIR=/tmp/dotfiles

die() {
    rm -rf $WORKDIR
    exit 1
}

# Downloading necessary files
git clone --depth=1 https://github.com/kvelcich/dotfiles.git $WORKDIR

# Configuration
printf "\nConfiguring vim...\n"
if ! sh $WORKDIR/vim/install.sh; then
    die
fi
printf "\nConfiguring zsh...\n"
if ! sh $WORKDIR/zsh/install.sh; then
    die
fi
printf "\nConfiguring hyper...\n"
if ! sh $WORKDIR/hyper/install.sh; then
    die
fi

rm -rf $WORKDIR
exec zsh && exit 0 

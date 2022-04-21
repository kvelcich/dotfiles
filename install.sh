#!/bin/sh

OS=""
WORKDIR=/tmp/dotfiles

die() {
    rm -rf $WORKDIR
    exit 1
}

# Determining OS Environment
if [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macOS"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    OS="$(awk -F= '$1=="ID" { print $2 ;}' /etc/os-release)"
    if grep -q Microsoft /proc/version; then
        OS="$OS-wsl"
    fi
fi

# Downloading necessary files
# git clone --depth=1 https://github.com/kvelcich/dotfiles.git $WORKDIR

# Configuration
# printf "\nConfiguring vim...\n"
# if ! sh $WORKDIR/vim/install.sh $OS; then
    die
# fi
# printf "\nConfiguring zsh...\n"
# if ! sh $WORKDIR/zsh/install.sh $OS; then
    die
# fi
printf "\nConfiguring hyper...\n"
if ! sh $WORKDIR/hyper/install.sh $OS; then
    die
fi

rm -rf $WORKDIR
exec zsh && exit 0 

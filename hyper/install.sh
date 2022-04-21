#!/bin/sh

# Determine directory to place resources in
HYPERDIR=$HOME
if grep -q wsl <<< $1; then
    # TODO: assumes user is installed to C drive
    WIN_USER=$(powershell.exe '$env:UserName')
    HYPERDIR="/mnt/c/${WIN_USER::-1}/AppData/Roaming/Hyper"
fi

# Download hyper-kevin colorscheme (currently just as a local plugin)
mkdir -p $HYPERDIR/.hyper_plugins/local
rm -rf $HYPERDIR/.hyper_plugins/local/hyper-kev
git clone https://github.com/kvelcich/hyper-kev.git \
    $HYPERDIR/.hyper_plugins/local/

# Copying hyper resources
cp $(dirname $0)/.hyper.js $HYPERDIR/.

# TODO: Do something about installing the Roboto Mono Font to use


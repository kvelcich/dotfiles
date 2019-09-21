#!/bin/sh

# Determine directory to place resources in
HYPERDIR=$HOME
if grep -q wsl <<< $1; then
    # TODO: automatically figure out user name here
    HYPERDIR=/mnt/c/Users/kvel/AppData/Roaming/Hyper
fi

# Download hyper-kevin colorscheme (currently just as a local plugin)
mkdir -p $HYPERDIR/.hyper_plugins/local
rm -rf $HYPERDIR/.hyper_plugins/local/hyper-kevin
git clone git@github.com:kvelcich/hyper-kevin.git \
    $HYPERDIR/.hyper_plugins/local/hyper-kevin

# Copying hyper resources
cp $(dirname $0)/.hyper.js $HYPERDIR/.

# TODO: Do something about installing the Roboto Mono Font to use


#!/usr/bin/env bash

function sync_with_home(){
    rsync -av --exclude='.git' --exclude='install.sh' --exclude="README.md"  . ~
}

if [[ $(dirname $0) != '.' ]]; then
    echo "Run this from the directory it's in."
    exit 1
fi

sync_with_home
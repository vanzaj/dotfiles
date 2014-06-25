#!/usr/bin/env bash

cd "$(dirname $0)"

excl='--exclude=".git/" --exclude="install.sh" --exclude="README.md"'
rsync -av $excl . ~

source ~/.bashrc

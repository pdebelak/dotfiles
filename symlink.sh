#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo "Symlinking .zsh.after..."
mkdir -p ~/.zsh.after
ln -sf $DIR/.zsh.after/* ~/.zsh.after/
echo "Symlinking .gitconfig.user..."
ln -sf $DIR/.gitconfig.user ~/.gitconfig.user

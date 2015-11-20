#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo "Symlinking .zsh.after..."
mkdir -p ~/.zsh.after
ln -sf $DIR/.zsh.after/* ~/.zsh.after/
echo "Symlinking .gitconfig.user..."
ln -sf $DIR/.gitconfig.user ~/.gitconfig.user
echo "Symlinking .vimrc.after..."
ln -sf $DIR/.vimrc.after ~/.vimrc.after
echo "Symlinking .tmux.conf.user..."
ln -sf $DIR/.tmux.conf.user ~/.tmux.conf.user
echo "Symlinking scripts"
ln -sf $DIR/scripts/* ~/bin/

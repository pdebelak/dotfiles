#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# vim symlinking
ln -sf $DIR/vimrc ~/.vimrc
mkdir -p ~/.vim
ln -sf $DIR/vim/* ~/.vim/

# zsh symlinking
ln -sf $DIR/zshrc ~/.zshrc
mkdir -p ~/.zsh
ln -sf $DIR/zsh/* ~/.zsh/

# git symlinking
ln -sf $DIR/gitconfig ~/.gitconfig
ln -sf $DIR/gitconfig_global ~/.gitconfig_global

# tmux symlinking
ln -sf $DIR/tmux.conf ~/.tmux.conf

# script symlinking
ln -sf $DIR/scripts/* ~/bin/

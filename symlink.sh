#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# vim symlinking
ln -sf $DIR/vimrc ~/.vimrc
mkdir -p ~/.vim
ln -sf $DIR/vim/* ~/.vim/

# nvim symlinking
mkdir -p ~/.config
mkdir -p ~/.config/nvim
ln -sf $DIR/vimrc ~/.config/nvim/init.vim
ln -sf $DIR/vim/* ~/.config/nvim/

# zsh symlinking
ln -sf $DIR/zshrc ~/.zshrc
mkdir -p ~/.zsh
ln -sf $DIR/zsh/* ~/.zsh/

# pryrc symlinking
ln -sf $DIR/pryrc ~/.pryrc

# git symlinking
ln -sf $DIR/gitconfig ~/.gitconfig
ln -sf $DIR/gitignore_global ~/.gitignore_global

# aginore symlinking
ln -sf $DIR/agignore ~/.agignore

# tmux symlinking
ln -sf $DIR/tmux.conf ~/.tmux.conf

# script symlinking
ln -sf $DIR/scripts/* ~/bin/

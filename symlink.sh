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

# bash symlinking
ln -sf $DIR/bashrc ~/.bashrc
ln -sf $DIR/bash_profile ~/.bash_profile
mkdir -p ~/.bash
ln -sf $DIR/bash/* ~/.bash/

# other .rc symlinking
ln -sf $DIR/pryrc ~/.pryrc
ln -sf $DIR/irbrc ~/.irbrc
ln -sf $DIR/sqliterc ~/.sqliterc

# git symlinking
ln -sf $DIR/gitconfig ~/.gitconfig
ln -sf $DIR/gitignore_global ~/.gitignore_global

# aginore symlinking
ln -sf $DIR/agignore ~/.agignore

# tmux symlinking
ln -sf $DIR/tmux.conf ~/.tmux.conf

# script symlinking
ln -sf $DIR/scripts/* ~/bin/

# emacs symlinking
mkdir -p ~/.emacs.d
ln -sf $DIR/emacs.d/* ~/.emacs.d/

# guile symlinking
ln -sf $DIR/guile ~/.guile

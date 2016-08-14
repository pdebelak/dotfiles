set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'skwp/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'pdebelak/spec_commands.vim'
Plugin 'jgdavey/tslime.vim'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'skwp/YankRing.vim'
Plugin 'skwp/vim-spec-finder'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'ecomba/vim-ruby-refactoring'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

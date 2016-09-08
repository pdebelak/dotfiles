call plug#begin('~/.vim/plugged')

" Plugins go here

Plug 'christoomey/vim-tmux-navigator'
Plug 'mileszs/ack.vim'
Plug 'pdebelak/spec_commands.vim'
Plug 'jgdavey/tslime.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'skwp/YankRing.vim'
Plug 'skwp/vim-spec-finder'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'mxw/vim-jsx'
Plug 'neomake/neomake'
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
Plug 'fatih/vim-go', {'for': 'go'}

" All of your Plugins must be added before the following line
call plug#end()

let mapleader = ","

source ~/.vim/keybindings/specs.vim
source ~/.vim/keybindings/xmpfilter.vim
source ~/.vim/keybindings/tabs-and-splits.vim
source ~/.vim/keybindings/ctrlp.vim
source ~/.vim/keybindings/search.vim

xnoremap <leader>cp <esc>:'<,'>:w !pbcopy<CR><CR>

autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['jshint']
nnoremap // :noh<CR>

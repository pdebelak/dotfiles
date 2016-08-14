let mapleader = ","

source ~/.vim/keybindings/specs.vim
source ~/.vim/keybindings/xmpfilter.vim
source ~/.vim/keybindings/tabs-and-splits.vim
source ~/.vim/keybindings/ctrlp.vim
source ~/.vim/keybindings/search.vim
source ~/.vim/keybindings/nerdstuff.vim

xnoremap <leader>cp <esc>:'<,'>:w !pbcopy<CR><CR>

autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['jshint']

" These mappings are from https://github.com/skwp/dotfiles
nnoremap ,ow "_diwhp

nnoremap 0 ^
nnoremap ^ 0

"make Y consistent with C and D
nnoremap Y y$
function! YRRunAfterMaps()
  nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap <silent> ,z :bp<CR>
nnoremap <silent> ,x :bn<CR>

nnoremap <silent> ,cf :let @* = expand("%:~")<CR>

" These are very similar keys. Typing 'a will jump to the line in the current
" file marked with ma. However, `a will jump to the line and column marked
" with ma.  It’s more useful in any case I can imagine, but it’s located way
" off in the corner of the keyboard. The best way to handle this is just to
" swap them: http://items.sjbach.com/319/configuring-vim-right
nnoremap ' `
nnoremap ` '

" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
nnoremap <silent> ,f <C-]>

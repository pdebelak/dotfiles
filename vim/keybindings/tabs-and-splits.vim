if !has("gui_running")
  nnoremap <C-t>n :tabnew<CR>
  nnoremap <C-t>1 :tabn 1<CR>
  nnoremap <C-t>2 :tabn 2<CR>
  nnoremap <C-t>3 :tabn 3<CR>
  nnoremap <C-t>4 :tabn 4<CR>
  nnoremap <C-t>5 :tabn 5<CR>
  nnoremap <C-t>6 :tabn 6<CR>
  nnoremap <C-t>7 :tabn 7<CR>
  nnoremap <C-t>8 :tabn 8<CR>
  nnoremap <C-t>9 :tabn 9<CR>
endif

nnoremap vv :vsplit<CR>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>

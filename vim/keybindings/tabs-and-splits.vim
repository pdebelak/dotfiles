if !has("gui_running")
  nnoremap <Localleader>n :tabnew<CR>
  nnoremap <Localleader>1 :tabn 1<CR>
  nnoremap <Localleader>2 :tabn 2<CR>
  nnoremap <Localleader>3 :tabn 3<CR>
  nnoremap <Localleader>4 :tabn 4<CR>
  nnoremap <Localleader>5 :tabn 5<CR>
  nnoremap <Localleader>6 :tabn 6<CR>
  nnoremap <Localleader>7 :tabn 7<CR>
  nnoremap <Localleader>8 :tabn 8<CR>
  nnoremap <Localleader>9 :tabn 9<CR>
endif

nnoremap vv :vsplit<CR>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-t> <C-w>T

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
if has('nvim')
  nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
end

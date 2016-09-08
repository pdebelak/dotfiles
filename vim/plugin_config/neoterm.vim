let g:neoterm_position = 'horizontal'
let g:neoterm_size = 20

nnoremap <Leader>nz <C-w>_<CR>
nnoremap <Leader>nn :execute "normal <C-w>=" <bar> :resize 20<CR>
nnoremap <Leader>zc :T zeus console<CR>

if has('nvim')
  tnoremap <Leader><Esc> <C-\><C-n>
end

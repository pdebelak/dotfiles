if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_clear_cache_on_exit = 1

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 0

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = '<Leader>t'
nnoremap <silent> <Leader>t :CtrlP<CR>

" Additional mapping for buffer search
nnoremap <silent> <Leader>b :CtrlPBuffer<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <Leader>pp :ClearCtrlPCache<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map <Leader>ja :CtrlP app/assets<CR>
map <Leader>jm :CtrlP app/models<CR>
map <Leader>jc :CtrlP app/controllers<CR>
map <Leader>jv :CtrlP app/views<CR>
map <Leader>jh :CtrlP app/helpers<CR>
map <Leader>jl :CtrlP lib<CR>
map <Leader>jp :CtrlP public<CR>
map <Leader>js :CtrlP spec<CR>
map <Leader>jf :CtrlP fast_spec<CR>
map <Leader>jd :CtrlP db<CR>
map <Leader>jC :CtrlP config<CR>
map <Leader>jV :CtrlP vendor<CR>
map <Leader>jF :CtrlP factories<CR>
map <Leader>jT :CtrlP test<CR>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

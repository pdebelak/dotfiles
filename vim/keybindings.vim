let mapleader = ","
nnoremap <Leader>sv :RelatedSpecVOpen<CR>

if !has("gui_running")
  autocmd FileType ruby nnoremap <Leader>sl :call Send_to_Tmux(SpringRSpecLine() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>ss :call Send_to_Tmux(SpringRSpec() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>rl :call Send_to_Tmux(RSpecLine() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>rs :call Send_to_Tmux(RSpec() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>smt :call Send_to_Tmux(Minitest() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>sml :call Send_to_Tmux(MinitestLine() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>zl :call Send_to_Tmux(ZeusRSpecLine() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>zs :call Send_to_Tmux(ZeusRSpec() . "\n")<CR>

  autocmd FileType elixir nnoremap <Leader>smt :call Send_to_Tmux(MixTest() . "\n")<CR>
  autocmd FileType elixir nnoremap <Leader>sml :call Send_to_Tmux(MixTestLine() . "\n")<CR>

  nnoremap <Leader>st :call TextToTmux()<CR>
  set background=light

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
else
  set background=dark
endif

xnoremap <leader>cp <esc>:'<,'>:w !pbcopy<CR><CR>

" autocmd BufWritePre * :StripTrailingWhitespaces
autocmd BufNewFile,BufRead *.md setlocal wrap
autocmd BufRead,BufNewFile *.md setlocal spell

let g:xmpfilter_cmd = "seeing_is_believing"

autocmd FileType ruby nmap <buffer> <C-x>m <Plug>(seeing_is_believing-mark)
autocmd FileType ruby xmap <buffer> <C-x>m <Plug>(seeing_is_believing-mark)
autocmd FileType ruby imap <buffer> <C-x>m <Plug>(seeing_is_believing-mark)

autocmd FileType ruby nmap <buffer> <C-x>c <Plug>(seeing_is_believing-clean)
autocmd FileType ruby xmap <buffer> <C-x>c <Plug>(seeing_is_believing-clean)
autocmd FileType ruby imap <buffer> <C-x>c <Plug>(seeing_is_believing-clean)

autocmd FileType ruby nmap <buffer> <C-x>r <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby xmap <buffer> <C-x>r <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby imap <buffer> <C-x>r <Plug>(seeing_is_believing-run_-x)

autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['jshint']
nnoremap // :noh<CR>
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

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 0

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = ',t'
nnoremap <silent> ,t :CtrlP<CR>

" Additional mapping for buffer search
nnoremap <silent> ,b :CtrlPBuffer<cr>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map ,ja :CtrlP app/assets<CR>
map ,jm :CtrlP app/models<CR>
map ,jc :CtrlP app/controllers<CR>
map ,jv :CtrlP app/views<CR>
map ,jh :CtrlP app/helpers<CR>
map ,jl :CtrlP lib<CR>
map ,jp :CtrlP public<CR>
map ,js :CtrlP spec<CR>
map ,jf :CtrlP fast_spec<CR>
map ,jd :CtrlP db<CR>
map ,jC :CtrlP config<CR>
map ,jV :CtrlP vendor<CR>
map ,jF :CtrlP factories<CR>
map ,jT :CtrlP test<CR>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

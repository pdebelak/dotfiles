nnoremap <Leader>sv :RelatedSpecVOpen<CR>

function OpenBelowInTerm(value)
  vsplit new
  execute "normal \<C-w>J"
  resize 20
  call termopen(a:value)
endfunction

" This was some experimentation to using the terminal in nvim instead of tmux.
" Sidelined due to less than ideal behavior, but keeping around in case I
" think of a similar but better approach
" if has('nvim')
  " autocmd FileType ruby nnoremap <Leader>sl :call OpenBelowInTerm(SpringRSpecLine())<CR>
  " autocmd FileType ruby nnoremap <Leader>ss :call OpenBelowInTerm(SpringRSpec())<CR>
  " autocmd FileType ruby nnoremap <Leader>rl :call OpenBelowInTerm(RSpecLine())<CR>
  " autocmd FileType ruby nnoremap <Leader>rs :call OpenBelowInTerm(RSpec())<CR>
  " autocmd FileType ruby nnoremap <Leader>smt :call OpenBelowInTerm(Minitest())<CR>
  " autocmd FileType ruby nnoremap <Leader>sml :call OpenBelowInTerm(MinitestLine())<CR>
  " autocmd FileType ruby nnoremap <Leader>zl :call OpenBelowInTerm(ZeusRSpecLine())<CR>
  " autocmd FileType ruby nnoremap <Leader>zs :call OpenBelowInTerm(ZeusRSpec())<CR>

  " autocmd FileType elixir nnoremap <Leader>smt :call OpenBelowInTerm(MixTest())<CR>
  " autocmd FileType elixir nnoremap <Leader>sml :call OpenBelowInTerm(MixTestLine())<CR>
" elseif !has("gui_running")
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
endif

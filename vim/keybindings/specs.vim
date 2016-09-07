nnoremap <Leader>sv :RelatedSpecVOpen<CR>

if has('nvim')
  autocmd FileType ruby nnoremap <Leader>rl :execute "T " . RSpecLine()<CR>
  autocmd FileType ruby nnoremap <Leader>rs :execute "T " . RSpec()<CR>
  autocmd FileType ruby nnoremap <Leader>smt :execute "T " . Minitest()<CR>
  autocmd FileType ruby nnoremap <Leader>sml :execute "T " . MinitestLine()<CR>
  autocmd FileType ruby nnoremap <Leader>zl :execute "T " . ZeusRSpecLine()<CR>
  autocmd FileType ruby nnoremap <Leader>zs :execute "T " . ZeusRSpec()<CR>

  autocmd FileType elixir nnoremap <Leader>smt :execute "T " . MixTest()<CR>
  autocmd FileType elixir nnoremap <Leader>sml :execute "T " . MixTestLine()<CR>
elseif !has("gui_running")
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

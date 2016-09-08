nnoremap <Leader>sv :RelatedSpecVOpen<CR>

if has('nvim')
  autocmd FileType ruby nnoremap <Leader>rl :execute "T " . RSpecLine()<CR>
  autocmd FileType ruby nnoremap <Leader>rs :execute "T " . RSpec()<CR>
  autocmd FileType ruby nnoremap <Leader>mt :execute "T " . Minitest()<CR>
  autocmd FileType ruby nnoremap <Leader>ml :execute "T " . MinitestLine()<CR>
  autocmd FileType ruby nnoremap <Leader>zl :execute "T " . ZeusRSpecLine()<CR>
  autocmd FileType ruby nnoremap <Leader>zs :execute "T " . ZeusRSpec()<CR>

  autocmd FileType elixir nnoremap <Leader>mt :execute "T " . MixTest()<CR>
  autocmd FileType elixir nnoremap <Leader>ml :execute "T " . MixTestLine()<CR>
elseif !has("gui_running")
  autocmd FileType ruby nnoremap <Leader>rl :call Send_to_Tmux(RSpecLine() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>rs :call Send_to_Tmux(RSpec() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>mt :call Send_to_Tmux(Minitest() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>ml :call Send_to_Tmux(MinitestLine() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>zl :call Send_to_Tmux(ZeusRSpecLine() . "\n")<CR>
  autocmd FileType ruby nnoremap <Leader>zs :call Send_to_Tmux(ZeusRSpec() . "\n")<CR>

  autocmd FileType elixir nnoremap <Leader>mt :call Send_to_Tmux(MixTest() . "\n")<CR>
  autocmd FileType elixir nnoremap <Leader>ml :call Send_to_Tmux(MixTestLine() . "\n")<CR>

  nnoremap <Leader>st :call TextToTmux()<CR>
endif

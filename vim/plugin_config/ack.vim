if executable('rg')
  " use ripgrep for ack if available
  let g:ackprg = 'rg --vimgrep --ignore-file ~/.agignore'
elseif executable('ag')
  " else use silver searcher for ack if available
  let g:ackprg = 'ag --vimgrep'
endif

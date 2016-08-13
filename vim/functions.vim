function TextToTmux()
  call inputsave()
  let a:command = input("Enter command: ")
  call inputrestore()
  call Send_to_Tmux(a:command . "\n")
endfunction

function FillInIvars()
  let find_initialize = "normal! ?def initialize\<CR>$""
  let put_word_as_ivar = "ywo@\<esc>pa = \<esc>p"
  execute find_initialize
  let c = 0
  while c < 10
    execute "normal! F,maw". put_word_as_ivar . "`a"
    let c += 1
  endwhile
  execute find_initialize
  execute "normal! F(l" . put_word_as_ivar
  execute "delmarks a"
endfunction

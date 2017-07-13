autocmd! BufWritePost * Neomake

let g:neomake_javascript_enabled_makers = ['eslint']

let g:neomake_warning_sign = {
  \ 'text': '>>',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': '>>',
  \ 'texthl': 'ErrorMsg',
  \ }

function! neomake#makers#ft#c#clang() abort
  return {
    \ 'args': ['-fsyntax-only', '-Wall', '-Wextra', '-I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk/usr/include/libxml2'],
    \ 'errorformat':
    \ '%-G%f:%s:,' .
    \ '%f:%l:%c: %trror: %m,' .
    \ '%f:%l:%c: %tarning: %m,' .
    \ '%I%f:%l:%c: note: %m,' .
    \ '%f:%l:%c: %m,'.
    \ '%f:%l: %trror: %m,'.
    \ '%f:%l: %tarning: %m,'.
    \ '%I%f:%l: note: %m,'.
    \ '%f:%l: %m'
    \ }
endfunction

if has('nvim')
  tnoremap <C-q> <C-\><C-n>
endif

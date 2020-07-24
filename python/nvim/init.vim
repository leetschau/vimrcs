runtime ../../langbase/nvim/init.vim

let g:pymode_lint_on_fly = 0
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_folding = 0
let g:pymode_python = 'python3'

function! Vimux4IPython()
  call VimuxRunCommand("%cpaste")
  call VimuxRunCommand(@v, 0)
  call VimuxRunCommand("^d")
endfunction
autocmd FileType python vnoremap <Space> "vy :call Vimux4IPython()<CR>

VAMActivate github:python-mode/python-mode

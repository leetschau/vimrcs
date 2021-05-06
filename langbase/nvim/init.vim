runtime ../../text/nvim/init.vim

" disable ALE by default
let g:ale_enabled = 0

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

VAMActivate github:w0rp/ale
  \ github:tpope/vim-fugitive
  \ github:vim-syntastic/syntastic
  \ github:benmills/vimux


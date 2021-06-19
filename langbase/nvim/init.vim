runtime ../../text/nvim/init.vim

" disable ALE by default
let g:ale_enabled = 0

" syntastic
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

VAMActivate
  \ github:dense-analysis/ale
  "\ github:vim-syntastic/syntastic
  \ github:tpope/vim-fugitive
  \ github:preservim/vimux


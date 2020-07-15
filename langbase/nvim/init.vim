runtime ../../text/nvim/init.vim

" disable ALE by default
let g:ale_enabled = 0

" Voom outline
let g:voom_tree_placement = "right"
let g:voom_python_versions = [3]
let g:voom_tree_width = 40
autocmd FileType asciidoc nnoremap <leader>o :VoomToggle asciidoc<CR>
autocmd FileType markdown nnoremap <leader>o :VoomToggle markdown<CR>

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

VAMActivate github:plasticboy/vim-markdown
  \ github:vim-voom/VOom
  \ github:w0rp/ale
  \ github:tpope/vim-fugitive
  \ github:vim-syntastic/syntastic
  \ github:benmills/vimux


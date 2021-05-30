runtime ../../langbase/nvim/init.vim

let g:formatdef_sql = '"sqlformat --keywords upper --identifiers lower -"'
let g:formatters_sql = ['sql']
noremap <leader>fmt :Autoformat<CR>

let g:snipMate = { 'snippet_version' : 1 }

VAMActivate
  \ github:Chiel92/vim-autoformat
  \ github:garbas/vim-snipmate
  \ vim-snippets

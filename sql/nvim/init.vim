runtime ../../langbase/nvim/init.vim

"let g:formatdef_sql = '"sqlformat --reindent --keywords upper --identifiers lower -"'
let g:formatdef_sql = '"sqlformat --keywords upper --identifiers lower -"'
let g:formatters_sql = ['sql']
autocmd BufWritePre *.sql Autoformat

" mucomplete
let g:mucomplete#enable_auto_at_startup = 1

VAMActivate github:Chiel92/vim-autoformat
  \ github:lifepillar/vim-mucomplete
  \ dbext

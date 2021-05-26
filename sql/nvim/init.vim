runtime ../../langbase/nvim/init.vim

"let g:formatdef_sql = '"sqlformat --reindent --keywords upper --identifiers lower -"'
let g:formatdef_sql = '"sqlformat --keywords upper --identifiers lower -"'
let g:formatters_sql = ['sql']
autocmd BufWritePre *.sql Autoformat
noremap <leader>f :Autoformat<CR>

VAMActivate github:Chiel92/vim-autoformat

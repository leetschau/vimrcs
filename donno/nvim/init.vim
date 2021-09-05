runtime ../../text/nvim/init.vim

let g:donHome =  '~/.donno'

command! -nargs=+ -complete=file Atti call DonAttach(1, <f-args>)
command! -nargs=+ -complete=file Attf call DonAttach(0, <f-args>)

function DonAttach(isImage, filePath, ...)
  let l:caption = trim(system('fn=' . a:filePath . ' && basename ${fn%.*}'))
  if a:0 > 0
    let l:caption = a:1
  endif
  let l:targetFn = trim(system('fn=' . a:filePath . ' && basename ${fn}'))
  let l:target = g:donHome . '/resources/' . l:targetFn
  if empty(glob(l:target))
    call system("cp " . a:filePath . " " . g:donHome . "/resources")
    echo "\nFile " . a:filePath . " is copied to " . g:donHome . "/resources\n"
    if a:isImage
      execute "normal! i ![" . l:caption . "](resources/" . l:targetFn . ") "
    else
      execute "normal! i [" . l:caption . "](resources/" . l:targetFn . ") "
    endif
  else
    echomsg "Attachment file named " . l:target . " already exists."
    echomsg "Rename your attachment and try again!"
  endif
endfunction

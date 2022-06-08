
let g:LanguageClient_serverCommands = {
    \ 'd': ['~/.dub/packages/.bin/dls-latest/dls']
    \ }

fun LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    " note that if you are using Plug mapping you should not use `noremap` mappings.
    nmap <F5> <Plug>(lcn-menu)
    " Or map each action separately
    nmap <buffer> <silent> K <Plug>(lcn-hover)
    nmap <buffer> <silent> gd <Plug>(lcn-definition)
    nmap <buffer> <silent> <F2> <Plug>(lcn-rename)
  endif
endfun
au FileType * call LC_maps()


" Sets
"setlocal noignorecase
"setlocal nosmartcase
setlocal ts=4 sts=4 sw=4

au BufWritePre * :call TrimWhitespace()

" Source
ru plugin/Sets.vim

 " Plug Config
ru plugconfig/indentLine.vim

" Mappings
"nnoremap <C-d>t :packadd termdebug<cr> :Termdebug<space>
"✓


" Sets
setl ts=4 sts=4 sw=4

" Auto Commands
au BufWritePre * :call TrimWhitespace()

" Source
ru plugin/Sets.vim

" Plug Config
ru plugconfig/indentLine.vim


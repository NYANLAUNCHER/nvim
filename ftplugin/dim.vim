
setlocal ts=4 sts=4 sw=4

au BufWritePre * :call TrimWhitespace()

ru plugin/Sets.vim
ru plugconfig/indentLine.vim

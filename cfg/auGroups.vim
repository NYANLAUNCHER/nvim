" TODO: convert to lua

" auGroups
augroup SaveManualFolds
    autocmd!
    au BufWinLeave,BufLeave ?* silent! mkview
    au BufWinEnter          ?* silent! loadview
augroup END

" TODO: create a "blacklist" of things not to add
augroup TrimWhiteSpace
    autocmd!
    au Filetype cpp au BufWritePre * :call TrimWhitespace()
    au Filetype lua au BufWritePre * :call TrimWhitespace()
    au Filetype vim au BufWritePre * :call TrimWhitespace()
    au Filetype json au BufWritePre * :call TrimWhitespace()
    au Filetype lua au BufWritePre * :call TrimWhitespace()
augroup END

augroup SaveOnClose
    autocmd!
    au BufWritePre <Cmd>w<cr>
augroup END

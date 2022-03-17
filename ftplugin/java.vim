
setlocal ts=4 sts=4 sw=4

augroup jdtls_lsp
    autocmd!
    autocmd FileType java lua require'jdtls_setup'.setup()
augroup end

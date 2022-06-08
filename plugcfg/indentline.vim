
" Mappings
nnoremap <c-i>l <cmd>IndentLinesToggle <cr>

" Colorscheme
let g:indentLine_setColors = 1
let g:indentLine_defaultGroup = 'SpecialKey'

" Config
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char = '¦'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

augroup disable_indentline
    autocmd!
    au FileType help     let g:indentLine_enabled=0
    au FileType text     let g:indentLine_enabled=0
    au FileType notes    let g:indentLine_enabled=0
    au FileType startify let g:indentLine_enabled=0
    au FileType markdown let g:indentLine_enabled=0
augroup END

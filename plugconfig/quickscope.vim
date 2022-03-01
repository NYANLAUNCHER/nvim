
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' ctermfg=157
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' ctermfg=81
augroup END

let g:qs_buftype_blacklist = [
    \ 'noft',
    \ 'terminal', 
    \ 'powershell.exe', 
    \ 'startify', 
    \ 'telescope',
    \ 'nerdtree',
    \ 'playground'
    \]

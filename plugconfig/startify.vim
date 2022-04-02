
" Mappings
nnoremap <C-s> <Cmd>Startify<CR>
au FileType startify let g:indentLine_enabled=0
let g:startify_session_autoload = 0

" Config
let g:startify_bookmarks = [
    \ { 't': '~/notes/org/TODO.org' },
    \ { 'v': '~/.config/nvim/TODO.txt' },
    \]

let g:startify_lists = [
    \ { 'type': 'sessions',  'header': ['Sessions']       },
    \ { 'type': 'files',     'header': ['MRU']            },
    \ { 'type': 'dir',       'header': ['MRU '. getcwd()] },
    \ { 'type': 'bookmarks', 'header': ['Bookmarks']      },
    \ { 'type': 'commands',  'header': ['Commands']       },
    \ ]

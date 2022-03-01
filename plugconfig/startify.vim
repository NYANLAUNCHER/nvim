
" Mappings
nnoremap <C-s> <Cmd>Startify<CR>
au FileType startify let g:indentLine_enabled=0
let g:startify_session_autoload = 0

" Config
let g:startify_bookmarks = [
    \ { 't': '~/AppData/Local/nvim/TODO.txt' },
    \ { 'i': '~/AppData/Local/nvim/init.vim' },
    \ { 's': '~/AppData/Local/nvim/plugin/Sets.vim' },
    \ { 'm': '~/AppData/Local/nvim/keymap/Maps.vim' },
    \ { 'p': '~/AppData/Local/nvim/plugin/Plugins.vim' },
    \ { 'f': '~/AppData/Local/nvim/plugin/Functions.vim' },
    \ { 'a': '~/AppData/Local/nvim/plugin/auGroups.vim' },
    \ { 'c': '~/AppData/Local/nvim/colors/gruvbox.vim' },
    \ { 'r': '~/AppData/Local/nvim/junkyard' },
    \ { 'w': '~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json' },
    \ { 'b': '~/AppData/Roaming/qutebrowser/config/config.py' },
    \]

let g:startify_lists = [
    \ { 'type': 'sessions',  'header': ['Sessions']       },
    \ { 'type': 'files',     'header': ['MRU']            },
    \ { 'type': 'dir',       'header': ['MRU '. getcwd()] },
    \ { 'type': 'bookmarks', 'header': ['Bookmarks']      },
    \ { 'type': 'commands',  'header': ['Commands']       },
    \ ]

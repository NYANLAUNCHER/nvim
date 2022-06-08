
" Status Line
set statusline=
set laststatus=2
" good colorschemes: 'Tomorrow_Night', 'gruvbox'
let g:lightline = {
    \'colorscheme': 'Tomorrow_Night',
    \'active': {
    \  'left': [ [ 'mode' ],
    \            [ 'paste', 'readonly', 'gitbranch', 'filename', 'modified' ],
    \            [ '' ] ],
    \
    \  'middle': [ [ '' ],
    \              [ 'lsp_info', 'lsp_hints', 'lsp_errors', 'lsp_warnings', 'lsp_ok' ],
    \              [ 'absolutepath' ] ],
    \
    \  'right':[ [ 'lineinfo' ],
    \            [ 'fileformat', 'fileencoding', 'filetype' ],
    \            [ 'charvaluehex' ] ],
    \},
    \
    \'tabline': {
    \},
    \
    \'component': {
	\ 'charvaluehex': '0x%B',
    \},
    \
    \'component_function': {
    \  'gitbranch': 'FugitiveHead',
    \  'filetype': 'MyFiletype',
    \  'fileformat': 'MyFileformat',
    \},
    \}

"\'inactive': {
"\  'left':   [ [ '' ],
"\              [ 'filename' ],
"\              [ 'modified' ] ],
"\  
"\  'middle': [ [ '' ],
"\              [ 'absolutepath' ],
"\              [ '' ] ],
"\  
"\  'right':  [ [ '' ],
"\              [ 'lineinfo' ],
"\              [ 'bufnum', 'percent' ] ],
"\},

" Functions
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

fun! FugitiveHead_ll()
    return "" + FugitiveHead()
endfun

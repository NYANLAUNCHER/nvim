
" turn into plugin eventually
" 1. if you init with 1. it works like google docs
"   if you add a 1. after a - it replaces - with 1.
"   as usual \1. ignores this
" headers are defined by an ending ":"
"  \: ignores this
" heading layer is defined by spacing|tabbing
" titles are stored in a quickfix like fasion
" choose what heading layer to tab through Ex: h2
"  this can also be set to the default, all
" titles also define folds automatically

" General sets
set nu rnu
set guicursor=a:block
set noerrorbells
set nowrap
set noswapfile
set nobackup
set nowritebackup
""set undodir=~/AppData/Local/nvim-data/undodir
""set undofile
set hidden
set nohlsearch
set incsearch
set ignorecase
set smartcase
set signcolumn=yes
set scrolloff=8
set splitbelow splitright
filetype on

" map Maximizer Toggle
"nnoremap <c-w>m :MaximizerToggle<cr>

" Note specific config
set ts=2 sts=2
set shiftwidth=2

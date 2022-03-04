
" General Sets
syntax on
filetype plugin indent on
let g:mapleader = " "
set timeoutlen=800
set shortmess=a
set encoding=UTF-8
"colorscheme gruvbox ctermfg=#999999

set noerrorbells

set guicursor=a:block
"set nocursorline
set ts=4 sts=4 sw=4
set expandtab
set smarttab
set autoindent
set smartindent
set shiftround

set foldmethod=manual

set rnu nu
set nowrap
set signcolumn=yes
set fdc=0 "fold column spacing (0-9)
set colorcolumn=100
set scrolloff=8
set sidescrolloff=6
set cmdheight=2
set splitbelow splitright

set smartcase
set ignorecase
set hlsearch
set incsearch
set showmatch

set virtualedit+=block
"set gdefault

set autochdir
set exrc
set hidden
set autoread
set noswapfile
set nobackup
set nowritebackup
set undodir= "~/.local/share/nvim/undo/"
set undofile

" General Lets
let NERDTreeIgnore=[]
let g:vimsyn_folding = 0
let g:vim_json_warnings = 0
let g:vim_json_conceal = 0
let g:vim_json_syntax_conceal = 0


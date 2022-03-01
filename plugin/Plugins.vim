
" Plug-ins
call plug#begin(stdpath("config") . "/plugged")
" Start Screen
Plug 'mhinz/vim-startify'

" Colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim' "gruvbox for lightline

" Status Line
Plug 'nvim-lualine/lualine.nvim'
"Plug 'hoob3rt/lualine.nvim'
Plug 'rebelot/heirline.nvim'

" Window Management
Plug 'szw/vim-maximizer'

" Look Nice
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'

" File Navigation
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'derekwyatt/vim-fswitch' "Toggle .h and .cpp

" Movement
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'

" Language/Completion
Plug 'dhruvasagar/vim-dotoo'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'mfussenegger/nvim-jdtls'
Plug 'fladson/vim-kitty'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'nvim-treesitter/playground'
"Plug 'plasticboy/vim-markdown'
"Plug 'm-pilia/vim-ccls'

 " Cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'lukas-reineke/cmp-rg'
"Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

Plug 'tpope/vim-surround'
"Plug 'windwp/nvim-autopairs'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" Debugging
Plug 'mfussenegger/nvim-dap' " :h dap.txt
Plug 'nvim-telescope/telescope-dap.nvim' " :h dap.txt

" GIT
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" UE development
Plug 'drichardson/vim-unreal'

" Misc
Plug 'romainl/vim-cool'

call plug#end()

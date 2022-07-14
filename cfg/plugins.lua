local packer = require('packer')
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

packer.init({
  compile_path = vim.fn.stdpath('config')..'/cfg/packer_compiled.lua',
})

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Start Screen
  use 'mhinz/vim-startify'

  -- Colorscheme
  use 'gruvbox-community/gruvbox'
  use 'shinchu/lightline-gruvbox.vim' --gruvbox for lightline

  -- Status Line
  use 'nvim-lualine/lualine.nvim'
  --use 'hoob3rt/lualine.nvim'
  use 'rebelot/heirline.nvim'

  -- Window Management
  use 'szw/vim-maximizer'

  -- Look Nice
  use 'Yggdroot/indentLine'
  use 'ryanoasis/vim-devicons'

  -- File Navigation
  --use 'preservim/nerdtree'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'derekwyatt/vim-fswitch' --Toggle .h and .cpp

  -- Movement
  use 'justinmk/vim-sneak'
  use 'unblevable/quick-scope'

  -- Language Stuff
  use 'neovim/nvim-lspconfig'
  use {-- see: "https://github.com/autozimu/LanguageClient-neovim#quick-start"
    'autozimu/LanguageClient-neovim',
    ft = {'d'}
  }
  use 'mfussenegger/nvim-jdtls'
  use 'glepnir/lspsaga.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      'nvim-treesitter/playground'
    },
    -- use this to update TS languages
    --run = ':TSUpdate'
  }
  use 'fladson/vim-kitty'
  use 'm-pilia/vim-ccls'
  use 'habamax/vim-godot'
  use 'lervag/vimtex'
  use 'q60/vim-brainfuck'
  use 'dhruvasagar/vim-dotoo'
  use 'plasticboy/vim-markdown'
  use 'https://gitlab.com/verticallity/spwn-vim'

   -- Cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'lukas-reineke/cmp-rg'
  --use {
  --  'tzachar/cmp-tabnine',
  --  run = './install.sh'
  --}

  use 'tpope/vim-surround'
  --use 'windwp/nvim-autopairs'
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'

  -- Debugging
  use 'mfussenegger/nvim-dap' -- :h dap.txt
  use 'nvim-telescope/telescope-dap.nvim' -- :h dap.txt

  -- GIT
  use 'mhinz/vim-signify'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'junegunn/gv.vim'

  -- Misc
  use 'romainl/vim-cool'
  use 'tpope/vim-eunuch'

  if packer_bootstrap then
    packer.sync()
  end
end)

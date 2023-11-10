-- My plugin specs
return {
  -- Pretty stuff
  {
    'AlexvZyl/nordic.nvim', lazy = false, priority = 1000,
    config = function()
      require'nordic'.load()
    end
  },
  {
    'lukas-reineke/indent-blankline.nvim', main = 'ibl', config = function()
      require'ibl'.setup({
        indent = { char = '┊' },
        scope = { enabled = false }
      })
    end
  },

  -- Language Config
  'neovim/nvim-lspconfig',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function ()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { 'c', 'cpp', 'rust', 'lua', 'vim', 'vimdoc', 'query', 'html' },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  'camnw/lf-vim',
  -- Niceties
  'tpope/vim-surround',
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'}
  },
}

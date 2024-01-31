return {
  -- Pretty stuff
  {
    'AlexvZyl/nordic.nvim', lazy = false, priority = 1000, config = function()
      require'nordic'.load()
    end
  },
  -- Text Stuffs
  'tpope/vim-surround',
  {
    'unblevable/quick-scope', config = function()
      vim.g.qs_enable = 0
      -- note:
      -- use ';' to redo last line-search command
      vim.g.qs_hightlight_on_keys = {'f', 'F', 't', 'T'}
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
  -- File Finder
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'}
  },
  'camnw/lf-vim',
  -- Language Stuff
  'HiPhish/info.vim',
  'lluchs/vim-wren',
  {
    'mfussenegger/nvim-dap', main = 'dap', config = function()
      local dap = require('dap')
      dap.adapters.gdb = {
        type = 'executable',
        command = 'gdb',
        args = { '-i', 'dap' }
      }
      dap.configurations.c = {
        name = 'Launch',
        type = 'gdb',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
      }
    end
  }
}

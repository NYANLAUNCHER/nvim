require('keymap')
local telescope = require('telescope')

local keymaps = {
{'n', '<A-t>', ':Telescope '},
{'n', '<leader>ts', '<Cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For> ", "") })<CR>'},
{'n', '<leader>tw', '<Cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })<CR>'},
{'n', '<leader>tf', '<Cmd>lua require("telescope.builtin").find_files()<CR>'},
{'n', '<leader>td', '<Cmd>lua require("telescope.builtin").find_files({search_dirs = vim.fn.input("Search Dir: ", "", "dir")})<CR>'},
{'n', '<leader>tg', '<Cmd>lua require("telescope.builtin").git_files()<CR>'},
{'n', '<leader>tq', '<Cmd>lua require("telescope.builtin").quickfix()<CR>'},
{'n', '<leader>tb', '<Cmd>lua require("telescope.builtin").buffers()<CR>'},
{'n', '<leader>th', '<Cmd>lua require("telescope.builtin").help_tags()<CR>'},
{'n', '<C-t>r', '<Cmd>lua require("telescope.builtin").lsp_references({vim.fn.expand("<cword>")})<CR>'},
{'n', '<C-t>R', '<Cmd>lua require("telescope.builtin").lsp_references({vim.fn.expand("kcWORD>")})<CR>'},
{'n', '<C-t>a', '<Cmd>lua require("telescope.builtin").lsp_code_actions<CR>'},
{'n', '<C-t>d', '<Cmd>lua require("telescope.builtin").lsp_document_diagnostics<CR>'},
}
map(keymaps)

-- Base Config
telescope.setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    scroll_strategy = "cycle",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    disable_devicons = false,
    color_devicons = true,
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = true,
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'  },
    path_display = {"smart"},
    set_env = { ['COLORTERM'] = 'truecolor'  }, -- default = nil,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

-- My Config
local actions = require('telescope.actions')
telescope.setup {
  defaults = {
    prompt_prefix = ' ',
    file_sorter      = require'telescope.sorters'.get_fuzzy_file,
    file_previewer   = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer   = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      }
    },
    mappings = {
      i = {
        ["<C-x>"] = false,
        ["<C-q>"] = actions.send_to_qflist,
        ["<C-[>"] = actions.close,
        ["<C-;>"] = actions.close,
        ["<Up>"] = actions.cycle_history_prev,
        ["<Down>"] = actions.cycle_history_next,
      }
    }
  }
}

--require'telescope'.load_extension('fzy_native')

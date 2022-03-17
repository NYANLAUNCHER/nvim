
-- Sets
--setlocal noignorecase
--setlocal nosmartcase
vim.cmd([[setlocal ts=4 sts=4 sw=4]])

vim.cmd([[au BufWritePre * :call TrimWhitespace()]])

-- Source
vim.cmd([[ru plugin/Sets.vim]])

-- Plug Config
vim.cmd([[ru plugconfig/indentLine.vim]])

-- Mappings
--vim.api.nvim_set_keymap('n', '<C-d>t', ':packadd termdebug<cr> :Termdebug<space>', {noremap = true})

vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2

require'nvim-treesitter.configs'.setup({
  ensure_installed = {'javascript'},
    highlight = { enable = true },
    indent = { enable = false },
})

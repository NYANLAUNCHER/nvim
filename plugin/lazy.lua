-- configs for lazy.nvim plugin manager

-- make sure mapleader is set
if vim.g.mapleader == nil then
  vim.g.mapleader = ' '
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {
  ui = {
    border = 'rounded',
    title = 'Plugin Manager',
    title_pos = 'center',
  },
}

require'lazy'.setup('config.plugins', opts)


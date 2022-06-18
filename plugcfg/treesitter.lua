-- source: github.com/nvim-treesitter/nvim-treesitter#quickstart

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "d", "cpp", "c", "lua", "vim", "rust", "go",
    "bash", "gdscript", "cmake", "markdown", "org", "rasi"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

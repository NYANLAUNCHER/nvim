-- source: github.com/nvim-treesitter/nvim-treesitter#quickstart

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "d", "cpp", "c", "lua", "vim", "rust", "go",
    "bash", "gdscript", "cmake", "markdown", "org", "rasi"
  },
  ignore_install = { "latex" },
  highlight = {
    enable = true,
    disable = { "latex" },
    additional_vim_regex_highlighting = false,
  },
}

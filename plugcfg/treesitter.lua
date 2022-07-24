-- source: github.com/nvim-treesitter/nvim-treesitter#quickstart

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "d", "cpp", "c", "lua", "vim", "rust", "go",
    "bash", "gdscript", "cmake", "org", "rasi"
  },
  ignore_install = { "latex", "markdown" },
  highlight = {
    enable = true,
    disable = { "latex", "markdown" },
    additional_vim_regex_highlighting = false,
  },
}

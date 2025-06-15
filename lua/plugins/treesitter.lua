return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = {
      additional_vim_regex_highlighting = { "latex", "markdown" },
    },
    ensure_installed = {
      "latex",
    },
  },
}

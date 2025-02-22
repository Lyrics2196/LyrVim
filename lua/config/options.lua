-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true

opt.mouse:append("a")

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true

vim.g.lazyvim_python_lsp = "pyright"

opt.guifont = { "JetBrainsMono Nerd Font", "微软雅黑" }
opt.list = true
opt.listchars = { space = "·" }

opt.shell = "pwsh"
opt.shellcmdflag = "-command"
opt.shellquote = '"'
opt.shellxquote = ""

opt.conceallevel = 0

opt.spell = false

vim.g.neovide_title_background_color =
  string.format("%x", vim.api.nvim_get_hl(0, { id = vim.api.nvim_get_hl_id_by_name("Normal") }).bg)

vim.g.neovide_title_text_color = "white"

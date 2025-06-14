return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    -- 设置 SumatraPDF 作为 pdf 阅读器；macOS 可设置为 skim
    vim.gvimtex_view_general_viewer = "SumatraPDF"
    vim.gvimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

    -- vim.g.vimtex_view_method = "SumatraPDF"
    -- vim.g.vimtex_view_general_options = "-r @line @pdf @tex"

    -- 编译报错时不自动弹出错误窗口 :copen 手动打开
    vim.g.vimtex_quickfix_mode = 0

    -- 编译出现警告时，Quickfix 窗口在非焦点状态下打开，但不会自动切换到该窗口
    -- vim.g.vimtex_quickfix_open_on_warning = 2

    -- 使用 latexmk 进行编译
    vim.g.vimtex_compiler_method = "latexmk"

    -- 忽略部分报错
    -- vim.g.vimtex_quickfix_ignore_filters = {
    --
    --     }

    -- latex 编译参数
    vim.g.vimtex_compiler_latexmk = {
      options = {
        "-xelatex",
        "-synctex=1",
        "-shell-escape",
        "-interaction=nonstopmode",
        "-file-line-error",
      },
    }
  end,
  -- 仅在编辑 tex/latex 文件时加载
  ft = { "tex", "latex" },
}

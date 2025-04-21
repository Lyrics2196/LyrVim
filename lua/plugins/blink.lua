return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "none",
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<CR>"] = { "accept", "fallback" },

      ["<S-Tab>"] = { "select_prev", "fallback_to_mappings" },
      ["<Tab>"] = { "select_next", "fallback_to_mappings" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },

      ["<C-e>"] = { "snippet_forward", "fallback" },
      ["<C-u>"] = { "snippet_backward", "fallback" },
    },
    completion = {
      keyword = {
        -- 'prefix' will fuzzy match on the text before the cursor
        -- 'full' will fuzzy match on the text before _and_ after the cursor
        -- example: 'foo_|_bar' will match 'foo_' for 'prefix' and 'foo__bar' for 'full'
        range = "full",
      },
      list = { selection = { preselect = false, auto_insert = true } },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
      },
    },
    enabled = function()
      return not vim.tbl_contains({ "markdown" }, vim.bo.filetype)
        and vim.bo.buftype ~= "prompt"
        and vim.b.completion ~= false
    end,
  },
}

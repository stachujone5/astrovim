return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    opts.preselect = cmp.PreselectMode.Item
    opts.completion = {
      completeopt = "menu,menuone,noinsert",
    }
    opts.sources = {
      {
        name = "nvim_lsp",
        entry_filter = function(entry)
          local kind = cmp.lsp.CompletionItemKind
          return kind.Text ~= entry:get_kind() and kind.Snippet ~= entry:get_kind()
        end,
      },
    }
    return opts
  end,
}

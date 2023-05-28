return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    opts.preselect = cmp.PreselectMode.Item
    opts.completion = {
      completeopt = "menu,menuone,noinsert",
    }
    return opts
  end,
}

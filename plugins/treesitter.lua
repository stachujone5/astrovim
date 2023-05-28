return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "rust",
      "html",
      "typescript",
      "tsx",
      "javascript",
      "json",
      "sql",
      "css",
      "scss",
      "prisma",
      "dockerfile",
    })
  end,
}

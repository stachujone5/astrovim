return {
  -- first key is the mode
  n = {
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },

    -- basic remaps
    ["<C-d>"] = { "<C-d>zz", desc = "Screen in the middle when using C-u" },
    ["<C-u>"] = { "<C-u>zz", desc = "Screen in the middle when using C-z" },
    ["n"] = { "nzzzv", desc = "Screen in the middle when using find" },
    ["N"] = { "Nzzzv", desc = "Screen in the middle when using find" },
    ["<C-w>"] = { "<C-w>w", desc = "Switch windows" },

    -- TELESCOPE
    ["<C-p>"] = {
      function() require("telescope.builtin").find_files() end,
      desc = "Find file",
    },

    ["<leader>gt"] = {
      function() require("telescope.builtin").git_status() end,
      desc = "Show git changes per file",
    },

    ["<leader>pw"] = {
      function() require("telescope.builtin").live_grep() end,
      desc = "Find word using grep",
    },
    -- END OF TELESCOPE
  },
}

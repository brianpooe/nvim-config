return {
  "dlvandenberg/nvim-treesitter",
  -- "nvim-treesitter/nvim-treesitter",
  branch = "feature-angular",
  build = ":TSUpdate",
  event = { "BufRead", "BufNewFile" },
  dependencies = {
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    { "nvim-treesitter/playground" },
  },
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {

        "angular",
        "tsx",
        "javascript",
        "typescript",
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "html",
        "svelte",
        "graphql",
        "bash",
        "gitignore",
        "dockerfile",
        "yaml",
        "jsdoc",
        "json",
        "jsonc"
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,

      highlight = {
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
      },

      ident = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<leader>w",
          node_incremental = "<leader>w",
          scope_incremental = false,
          node_decremental = "<leader>W",
        },
      },
    })
  end,
}
return {
  -- { "brianpooe/darcula-solid.nvim", requires = "rktjmp/lush.nvim" },
  -- { "rebelot/kanagawa.nvim" },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local C = require("nordic.colors")
      require("nordic").setup({
        override = {
          ["@lsp.type.interface"] = { link = "Type" },
          TodoBgTODO = { link = "Function" },
          TodoFgTODO = { link = "Function" },
        },
      })
      require("nordic").load()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
      priority = 1000,
    },
  },
}

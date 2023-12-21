return {
  -- { "rebelot/kanagawa.nvim" },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").setup({
        override = {
          ["@lsp.type.interface"] = { link = "Type" },
          ["@lsp.type.namespace.typescript"] = { link = "Variable" },
          ["@lsp.typemod.class.defaultLibrary.typescript"] = { link = "Macro" },
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

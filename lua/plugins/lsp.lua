return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v3.x",
  config = function()
    -- Setup lsp-zero

    -- Setup Angular Language Service (for monorepo's)

    local config = require("lspconfig")
    local util = require("lspconfig.util")

    config.angularls.setup({
      root_dir = util.root_pattern("angular.json", "project.json"),
      filetypes = { "angular", "html", "typescript", "typescriptreact" },
    })
  end,
}

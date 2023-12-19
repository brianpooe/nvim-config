-- add any tools you want to have installed below
return {
  "williamboman/mason.nvim",
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "→",
        package_uninstalled = "✕",
      },
    },
    ensure_installed = {
      "angularls",
      "html",
      "cssls",
      "svelte",
      "lua_ls",
      "graphql",
      "emmet_ls",
      "eslint",
      "nxls",
      "prettier",
      "stylua",
      "eslint_d",
    },
  },
}

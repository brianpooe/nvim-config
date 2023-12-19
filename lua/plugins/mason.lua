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
      "nxls",
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
    },
  },
}

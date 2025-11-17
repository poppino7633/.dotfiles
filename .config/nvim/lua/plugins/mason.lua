return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { 'lua_ls', 'clangd', 'glsl_analyzer', 'rust_analyzer' },
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
  },
}

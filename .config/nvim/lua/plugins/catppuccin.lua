return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  opts = {
    default_integrations = true,
  },
  config = function()
    vim.cmd([[colorscheme catppuccin-mocha]])
  end,
}

require("options")
require("remap")
require("config.lazy")
require("config.lsp")

local loadNetrw = vim.api.nvim_create_augroup("loading_netrwPlugin", {clear = true})
vim.api.nvim_create_autocmd({"VimEnter"}, {
    pattern = {"*"},
    command = ":silent! Explore",
    group = loadNetrw
})


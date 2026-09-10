require("options")
require("remap")
require("config.lazy")
require("config.lsp")

vim.env.PATH = vim.fn.expand("~/.pyenv/shims") .. ":" .. vim.env.PATH

local mygroup = vim.api.nvim_create_augroup("loading_netrwPlugin", {clear = true})
vim.api.nvim_create_autocmd({"VimEnter"}, {
    pattern = {"*"},
    callback = function()
        local current_file = vim.fn.expand("%")
        if current_file == "" then
            vim.cmd(":silent! Explore")
        else
            vim.cmd(":silent! edit " .. current_file)
        end
    end,
    group = mygroup
})

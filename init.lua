vim.wo.number = true
vim.keymap.set('n', 'tn', ':tabnew<CR>')
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        local mode = vim.api.nvim_get_mode().mode
        local filetype = vim.bo.filetype
        if vim.bo.modified == true and mode == 'n' and filetype ~= "oil" then
            vim.cmd('lua vim.lsp.buf.format()')
        else
        end
    end
})
require("config.lazy")
require("functions")
require("lsp")


return {
    "github/copilot.vim",
    config = function()
        -- Enable Copilot for all filetypes
        vim.g.copilot_filetypes = {
            ["*"] = true,  -- Copilot enabled for all filetypes
            ["go"] = true, -- Allow Copilot for Go files
        }

        -- Ensure Copilot doesn't act as an LSP client (just completion)
        vim.api.nvim_create_autocmd("BufEnter", {
            pattern = "*.go",
            callback = function()
                vim.b.copilot_enabled = true
            end,
        })
    end
}


return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    cmd = { "MarkdownPreview", "MarkdownPreviewToggle", "MarkdownPreviewStop" },
    build = "cd app && yarn install",  -- or npm install
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },
}

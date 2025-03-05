
vim.keymap.set("n", "<C-_>", function() require("Comment.api").toggle.linewise.current() end, { noremap = true, silent = true })
vim.keymap.set("v", "<C-_>", function() require("Comment.api").toggle.linewise(vim.fn.visualmode()) end, { noremap = true, silent = true })
return {
  "numToStr/Comment.nvim",
  opts = {},
  keys = {
    -- Normal mode: Toggle comment with Ctrl+/
    { "<C-/>", function() require("Comment.api").toggle.linewise.current() end, mode = "n", desc = "Toggle comment" },

    -- Visual mode: Toggle comment with Ctrl+/
    { "<C-/>", function() require("Comment.api").toggle.linewise(vim.fn.visualmode()) end, mode = "v", desc = "Toggle comment" },
  }
}


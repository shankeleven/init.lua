
return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Available flavours: latte, frappe, macchiato, mocha
    })
    vim.cmd.colorscheme("catppuccin")
  end
}

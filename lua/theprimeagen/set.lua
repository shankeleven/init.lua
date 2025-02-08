vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true



vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.guicursor = {
  "n-v-c:block",                -- Normal, Visual, and Command mode: block cursor
  "i-ci-ve:ver25",             -- Insert and Replace mode: vertical bar cursor (25% width)
  "r-cr:hor20",                -- Replace mode: horizontal line (20% height)
  "o:hor50",                   -- Operator-pending mode: horizontal line (50% height)
  "sm:block-blinkwait175-blinkoff150-blinkon175", -- Select mode: blinking block
}


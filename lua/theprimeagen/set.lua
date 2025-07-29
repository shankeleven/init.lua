vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

--vim.keymap.set('n', '<C-_>', ':lua CommentToggle()<CR>', { noremap = true, silent = true })
--vim.keymap.set('v', '<C-_>', ':lua CommentToggle(true)<CR>', { noremap = true, silent = true })

vim.g.netrw_localcopycmd = ''  -- Prevent netrw from using external commands for copy
vim.g.netrw_use_xdg_open = 0   -- Avoid spawning external processes like xdg-open


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

vim.opt.colorcolumn = "110"
-- asking to use the + register connected to system clipboard
--vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.opt.clipboard = ""  -- Temporarily disable clipboard
    end,
})

vim.api.nvim_create_autocmd("BufLeave", {
    pattern = "*",
    callback = function()
        vim.opt.clipboard = "unnamedplus"  -- Re-enable clipboard
    end,
})


-- nested folder creation
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(event)
    local dir = vim.fn.fnamemodify(event.file, ":p:h")
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end
  end,
})


vim.opt.guicursor = {
  "n-v-c:block",                -- Normal, Visual, and Command mode: block cursor
  "i-ci-ve:ver25",             -- Insert and Replace mode: vertical bar cursor (25% width)
  "r-cr:hor20",                -- Replace mode: horizontal line (20% height)
  "o:hor50",                   -- Operator-pending mode: horizontal line (50% height)
  "sm:block-blinkwait175-blinkoff150-blinkon175", -- Select mode: blinking block
}


--vim.keymap.set('n', '<C-_>', ':lua CommentToggle()<CR>', { noremap = true, silent = true })
--vim.keymap.set('v', '<C-_>', ':lua CommentToggle(true)<CR>', { noremap = true, silent = true })



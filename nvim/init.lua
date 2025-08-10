vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.clipboard = "unnamedplus"

vim.o.termguicolors = true

vim.cmd.colorscheme("habamax")

vim.cmd [[
    highlight Normal guibg=none
    highlight NonText guibg=none
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
]]

require("nvim-tree").setup()
require("neogit").setup()

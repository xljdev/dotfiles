vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- numbers
opt.number = true
opt.relativenumber = true

-- tabs
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true

-- search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- clipboard
opt.clipboard = 'unnamedplus'

-- terminal
opt.termguicolors = true

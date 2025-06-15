-- Keymaps for better default experience
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<Space>", "<Nop>", opts) -- Space as leader key
vim.g.mapleader = " "              -- Set leader key to space
vim.g.maplocalleader = " "

-- Save with Ctrl-s
map("n", "<C-s>", ":w<CR>", opts)

-- Quit with Ctrl-q
map("n", "<C-q>", ":q<CR>", opts)

-- Quickly open file explorer (if you install 'nvim-tree')
--map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

map("i", "jk", "<ESC>", { desc = "Exit insert mode with JK" })

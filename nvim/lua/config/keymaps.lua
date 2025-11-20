vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.keymap.set

-- Essential
map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>c", "<cmd>bd<cr>")

map("n", "<C-Left>", "<C-w>h")
map("n", "<C-Down>", "<C-w>j")
map("n", "<C-Up>", "<C-w>k")
map("n", "<C-Right>", "<C-w>l")
map("n", "<S-Up>", "<cmd>resize +2<cr>")

map("n", "<S-Down>", "<cmd>resize -2<cr>")
map("n", "<S-Left>", "<cmd>vertical resize -2<cr>")
map("n", "<S-Right>", "<cmd>vertical resize +2<cr>")

map("v", "<", "<gv")
map("v", ">", ">gv")

map("n", "<A-Down>", ":m .+1<cr>==")
map("n", "<A-Up>", ":m .-2<cr>==")
map("v", "<A-Down>", ":m '>+1<cr>gv=gv")
map("v", "<A-Up>", ":m '<-2<cr>gv=gv")

map("v", "p", '"_dP')

map("n", "<Esc>", "<cmd>noh<cr>")

map("n", "<S-h>", "<cmd>bprevious<cr>")      -- Previous buffer
map("n", "<S-l>", "<cmd>bnext<cr>")          -- Next buffer

map("n", "<leader>v", "<cmd>vsplit<cr>")     -- Vertical split
map("n", "<leader>h", "<cmd>split<cr>")      -- Horizontal split
map("n", "<leader>x", "<cmd>close<cr>")      -- Close split

map("n", "<leader>d", "dd")                  -- Delete line
map("n", "<leader>y", "yy")                  -- Copy line

-- Quick command mode
map("n", ";", ":")                           -- ; instead of :

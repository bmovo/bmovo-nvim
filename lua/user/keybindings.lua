local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
--down for j
keymap("n", "<C-o>", "<C-w>o", opts)
keymap("n", "<C-;>", "<C-w>;", opts)

keymap("n", "sv", ":vsp<CR>", opts)
--split v
keymap("n", "sh", ":sp<CR>", opts)
keymap("n", "sc", "<C-w>c", opts)
-- close self
keymap("n", "so", "<C-w>o", opts)
-- close others

-- jump to other window
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)

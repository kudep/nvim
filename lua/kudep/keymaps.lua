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
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>b", ":ls<cr>", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Diffview -- 
keymap("n", "<leader>df", ":DiffviewOpen <Up>", opts)
keymap("n", "<leader>dh", "<cmd>DiffviewFileHistory<cr>", opts)

-- Telescope --
keymap("n", "<leader>tf", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>tl", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>tg", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>tb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>th", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<leader>tr", "<cmd>Telescope resume<cr>", opts)

-- Nvim-Tree --
keymap("n", "<leader>ew", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<leader>er", "<cmd>NvimTreeRefresh<cr>", opts)

keymap("x", "<leader>xc", ":'<,'>ToggleTermSendVisualSelection<cr>", opts)

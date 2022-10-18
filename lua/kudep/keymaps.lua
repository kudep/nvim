local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<space>", "<nop>", opts)
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
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-k>", "<c-w>k", opts)
keymap("n", "<c-l>", "<c-w>l", opts)

-- Resize with arrows
keymap("n", "<c-up>", ":resize -2<cr>", opts)
keymap("n", "<c-down>", ":resize +2<cr>", opts)
keymap("n", "<c-left>", ":vertical resize -2<cr>", opts)
keymap("n", "<c-right>", ":vertical resize +2<cr>", opts)

-- Navigate buffers
keymap("n", "<s-l>", ":bnext<cr>", opts)
keymap("n", "<s-h>", ":bprevious<cr>", opts)
keymap("n", "<leader>b", ":ls<cr>", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<esc>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "<leader>ss", '"gy:%s/<c-r>g//gc<left><left><left>', opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<c-h>", "<c-\\><c-n><c-w>h", term_opts)
-- keymap("t", "<c-j>", "<c-\\><c-n><c-w>j", term_opts)
-- keymap("t", "<c-k>", "<c-\\><c-n><c-w>k", term_opts)
-- keymap("t", "<c-l>", "<c-\\><c-n><c-w>l", term_opts)

-- Diffview -- 
keymap("n", "<leader>df", ":DiffviewOpen <up>", opts)
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

-- Terminal --
keymap("x", "<leader>xc", ":'<,'>ToggleTermSendVisualSelection<cr>", opts)

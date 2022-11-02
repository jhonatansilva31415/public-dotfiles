vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i","jk","<ESC>")

keymap.set("n","<leader>nh", ":nohl<CR>")

keymap.set("n","x",'"_x"')

-- keymap.set("n","<leader>+","<C-a>")
-- keymap.set("n","<leader>-","<C-x>") increment and decrement numbers

keymap.set("n","<leader>wv","<C-w>v") -- split window vertically 
keymap.set("n","<leader>wh","<C-w>s") -- split horizontally
keymap.set("n","<leader>we","<C-w>=") -- split equal width
keymap.set("n","<leader>wx",":close<CR>") -- close current window

-- tabs
keymap.set("n","<leader>to",":tabnew<CR>") -- open a new tab
keymap.set("n","<leader>tx",":tabclose<CR>") -- close current tab
keymap.set("n","<leader>tn",":tabn<CR>") -- next tab
keymap.set("n","<leader>tp",":tabp<CR>") -- previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n","<leader>wm",":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n","<leader>e",":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

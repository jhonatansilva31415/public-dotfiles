vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x"')

keymap.set("n", "qj", "20jzz")
keymap.set("n", "qk", "20kzz")
-- keymap.set("n","<leader>+","<C-a>")
-- keymap.set("n","<leader>-","<C-x>") increment and decrement numbers

keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>we", "<C-w>=") -- split equal width
keymap.set("n", "<leader>wx", ":close<CR>") -- close current window

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>wm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
-- " If the option accepts a Lua table as its value, you can use, to connect each
-- " command string, e.g.: find_command, vimgrep_arguments are both options that
-- " accept a Lua table as a value. So, you can configure them on the command line
-- " like so:
-- customize rg > :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files theme=dropdown<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep theme=dropdown<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- notes && projects
keymap.set("n", "<leader>znf", "<cmd>lua require('jds.plugins.telescope').find_notes()<cr>")
keymap.set("n", "<leader>zns", "<cmd>lua require('jds.plugins.telescope').search_notes()<cr>")

keymap.set("n", "<leader>zpf", "<cmd>lua require('jds.plugins.telescope').find_projects()<cr>")
keymap.set("n", "<leader>zps", "<cmd>lua require('jds.plugins.telescope').search_projects()<cr>")

keymap.set("n", "<leader>za", "<cmd>lua require('jds.plugins.telescope').second_brain()<cr>")
keymap.set("n", "<leader>p", "<cmd>Telescope project<cr>")

local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
	return
end

toggleterm.setup({
	-- size can be a number or function which is passed the current terminal
	size = 20,
	open_mapping = [[<c-\>]],
	hide_numbers = true, -- hide the number column in toggleterm buffers
	shade_filetypes = {},
	shade_terminals = true,
	-- autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
	shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
	start_in_insert = true,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	-- terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
	persist_size = true,
	persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
	direction = "float",
	close_on_exit = true, -- close the terminal window when the process exits
	shell = vim.o.shell, -- change the default shell
	auto_scroll = true, -- automatically scroll to the bottom on terminal output
	-- This field is only relevant if direction is set to 'float'
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

local M = {}

local Terminal = require("toggleterm.terminal").Terminal

local python = Terminal:new({ cmd = "python" })
function M._togglepython()
	python:toggle()
end

local unshaped_work = Terminal:new({ cmd = "nvim ~/storage/second-brain/notes/unshaped-work.md" })
function M._toggleunshapedwork()
	unshaped_work:toggle()
end

return M

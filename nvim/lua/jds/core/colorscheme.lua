local status, _ = pcall(vim.cmd, "colorscheme gruvbox")

if not status then
	print("Colorscheme not found!")
	return
end

-- bold and italics
vim.cmd([[
  syntax on
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
]])

-- enable transparency
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
]])

local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

telescope.setup({
	defaults = {
		pickers = {
			find_files = {
				theme = "dropdown",
			},
		},
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			},
		},
	},
	extensions = {
		project = {
			base_dirs = {
				"~/storage/projects",
			},
			hidden_files = true, -- default: false
			theme = "dropdown",
			order_by = "asc",
			sync_with_nvim_tree = true, -- default false
		},
	},
})

local M = {}

-- zettelkasten
function M.find_notes()
	require("telescope.builtin").find_files({
		shorten_path = true,
		cwd = "~/storage/notes/",
		prompt_title = "~ notes ~",
		height = 10,
		layout_strategy = "vertical",
	})
end

function M.search_notes()
	require("telescope.builtin").live_grep({
		shorten_path = true,
		cwd = "~/storage/notes/",
		prompt_title = "~ notes ~",
		height = 10,
		layout_strategy = "vertical",
	})
end

function M.find_projects()
	require("telescope.builtin").find_files({
		shorten_path = true,
		cwd = "~/storage/projects/",
		prompt = "~ projects ~",
		height = 10,
		layout_strategy = "vertical",
	})
end

function M.search_projects()
	require("telescope.builtin").live_grep({
		shorten_path = true,
		cwd = "~/storage/projects/",
		prompt_title = "~ projects ~",
		height = 10,
		layout_strategy = "vertical",
	})
end

function M.second_brain()
	require("telescope.builtin").find_files({
		cwd = "~/storage/",
		prompt_title = "~ todos ~",
		height = 10,
		layout_strategy = "vertical",
	})
end

telescope.load_extension("fzf")
telescope.load_extension("project")

return M

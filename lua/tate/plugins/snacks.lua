return {
	"folke/snacks.nvim",
	priority = 1000,

	opts = {
		terminal = {
			enabled = true,
		},
	},

	config = function()
		local snacks = require("snacks")
		local terminal = snacks.terminal
		local keymap = vim.keymap

		keymap.set("n", "<C-a>", function()
			terminal()
		end, { desc = "Toggle terminal" })

		keymap.set("t", "<C-z>", function()
			terminal.open(nil, nil)
		end, { desc = "Open new terminal" })

		keymap.set("t", "<C-x>", function()
			local current_win = vim.api.nvim_get_current_win()
			local buf = vim.api.nvim_win_get_buf(current_win)
			local filetype = vim.api.nvim_buf_get_option(buf, "filetype")

			if filetype == "snacks_terminal" then
				vim.api.nvim_win_close(current_win, true)
			else
				print("Not a terminal buffer")
			end
		end, { desc = "Close terminal" })

		keymap.set({ "n", "t" }, "<C-s>", function()
			local current_win = vim.api.nvim_get_current_win()
			local wins = vim.api.nvim_tabpage_list_wins(0)
			local current_index = nil

			for i, win in ipairs(wins) do
				if win == current_win then
					current_index = i
					break
				end
			end

			if current_index then
				local next_index = (current_index % #wins) + 1
				vim.api.nvim_set_current_win(wins[next_index])
			end
		end, { desc = "Cycle focus between all buffers" })

		snacks.setup()
	end,
}

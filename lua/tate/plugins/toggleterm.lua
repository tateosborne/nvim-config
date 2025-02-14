return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local horizontal = require("toggleterm")

		horizontal.setup({
			direction = "tab",
			shade_terminals = true,
			size = 15,
		})

		local keymap = vim.keymap.set

		keymap({ "n", "t" }, "<C-z>", function()
			horizontal.toggle()
			vim.cmd("startinsert")
		end, { desc = "Toggle terminal" })

		keymap("t", "<C-x>", "<C-\\><C-n><cmd>bd!<CR>", { desc = "Kill active terminal" })
	end,
}

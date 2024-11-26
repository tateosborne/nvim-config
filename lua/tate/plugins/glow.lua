return {
	"ellisonleao/glow.nvim",
	event = "VeryLazy",
	cmd = "Glow",

	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local glow = require("glow")

		local opts = {
			border = "solid",
			width_ratio = 0.7,
			height_ratio = 0.7 * 1.294,
		}

		local keymap = vim.keymap

		keymap.set("n", "<leader>mp", "<cmd>Glow<cr>", { desc = "Preview current buffer" })

		glow.setup(opts)
	end,
}

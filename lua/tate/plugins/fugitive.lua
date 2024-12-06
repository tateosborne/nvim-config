return {
	"tpope/vim-fugitive",

	dependencies = { "nvim-lua/plenary.nvim" },

	keys = {
		{ "<leader>gs", "<cmd>Git<cr>", desc = "Git status overview" },
		{ "<leader>ga", "<cmd>Git add %<cr>", desc = "Stage current file" },
		{ "<leader>gc", "<cmd>Git commit<cr>", desc = "Commit changes" },
		{ "<leader>gP", "<cmd>Git push<cr>", desc = "Push changes" },
		{ "<leader>gp", "<cmd>Git pull<cr>", desc = "Pull changes from remote" },
		{ "<leader>gl", "<cmd>Git branch<cr>", desc = "List and switch branches" },
		{ "<leader>gn", ":Git checkout -b ", desc = "Create and switch to a new branch" },
		{ "<leader>go", ":Git checkout ", desc = "Switch to an existing branch" },
		{ "<leader>gx", ":Git branch -d ", desc = "Delete a branch" },
		{ "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git diff split" },
		{ "<leader>gb", "<cmd>Git blame<cr>", desc = "Git blame current file" },
	},
}

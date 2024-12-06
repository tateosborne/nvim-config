return {
	"tpope/vim-fugitive",

	dependencies = { "nvim-lua/plenary.nvim" },

	keys = {
		{ "<leader>gs", "<cmd>Git<CR>", desc = "Git status" },
		{ "<leader>ga", "<cmd>Git add %<CR>", desc = "Stage current file" },
        { "<leader>gA", "<cmd>Git add .<CR>", desc = "Stage all changes" },
		{ "<leader>gc", "<cmd>Git commit<CR>", desc = "Commit changes" },
		{ "<leader>gP", "<cmd>Git push<CR>", desc = "Push changes" },
		{ "<leader>gp", "<cmd>Git pull<CR>", desc = "Pull changes from remote" },
		{ "<leader>gl", "<cmd>Git branch<CR>", desc = "List all branches" },
		{ "<leader>gn", ":Git checkout -b ", desc = "Create and switch to a new branch" },
		{ "<leader>go", ":Git checkout ", desc = "Switch to an existing branch" },
		{ "<leader>gx", ":Git branch -d ", desc = "Delete a branch" },
		{ "<leader>gd", "<cmd>Gdiffsplit<CR>", desc = "Git diff split" },
		{ "<leader>gb", "<cmd>Git blame<CR>", desc = "Git blame current file" },
	},
}

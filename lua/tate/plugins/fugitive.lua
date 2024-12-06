return {
	"tpope/vim-fugitive",

	dependencies = { "nvim-lua/plenary.nvim" },

	keys = {
		{ "<leader>gs", "<cmd>0G<CR>", desc = "Git status" },
		{ "<leader>ga", "<cmd>0G add %<CR>", desc = "Stage current file" },
        { "<leader>gA", "<cmd>0G add .<CR>", desc = "Stage all changes" },
		{ "<leader>gc", "<cmd>0G commit<CR>", desc = "Commit changes" },
		{ "<leader>gP", "<cmd>0G push<CR>", desc = "Push changes" },
		{ "<leader>gp", "<cmd>0G pull<CR>", desc = "Pull changes from remote" },
		{ "<leader>gl", "<cmd>G branch<CR>", desc = "List all branches" },
		{ "<leader>gn", ":Git checkout -b ", desc = "Create and switch to a new branch" },
		{ "<leader>go", ":Git checkout ", desc = "Switch to an existing branch" },
		{ "<leader>gx", ":Git branch -d ", desc = "Delete a branch" },
		{ "<leader>gd", "<cmd>Gdiffsplit<CR>", desc = "Git diff split" },
		{ "<leader>gb", "<cmd>G blame<CR>", desc = "Git blame current file" },
	},
}

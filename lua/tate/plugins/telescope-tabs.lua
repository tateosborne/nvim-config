return {
	"LukasPietzschmann/telescope-tabs",
	dependencies = { "nvim-telescope/telescope.nvim" },

	config = function()
		require("telescope").load_extension("telescope-tabs")
		require("telescope-tabs").setup({})
        local keymap = vim.keymap.set
        keymap("n", "<Space>o", "<cmd>Telescope telescope-tabs list_tabs<CR>", { desc = "Tab Switcher" })
	end,
}

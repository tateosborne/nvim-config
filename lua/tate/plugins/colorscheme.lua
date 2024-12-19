return {
	--"rebelot/kanagawa.nvim",
	--"navarasu/onedark.nvim",
	--"neanias/everforest-nvim",
    "pineapplegiant/spaceduck",
	--"zenbones-theme/zenbones.nvim",
    --dependencies = "rktjmp/lush.nvim", -- needed for zenbones

	priority = 1000,
	config = function()
		vim.cmd("set background=dark")
		vim.cmd("colorscheme spaceduck")
	end,
}

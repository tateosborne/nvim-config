return {
	-- "rebelot/kanagawa.nvim",
	"sainnhe/gruvbox-material",
	--"navarasu/onedark.nvim",
	--"neanias/everforest-nvim",
	-- "pineapplegiant/spaceduck",
	-- "shaunsingh/nord.nvim",
    -- "vague2k/vague.nvim",

	-- "zenbones-theme/zenbones.nvim",
	-- dependencies = "rktjmp/lush.nvim", -- needed for zenbones

	priority = 1000,
	config = function()
		vim.cmd("set background=dark")
		vim.cmd("colorscheme gruvbox-material")
	end,
}

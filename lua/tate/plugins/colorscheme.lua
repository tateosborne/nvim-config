return {
	"rebelot/kanagawa.nvim",
	-- "sainnhe/gruvbox-material",
	--"neanias/everforest-nvim",
	-- "pineapplegiant/spaceduck",
	-- "shaunsingh/nord.nvim",
    -- "AlexvZyl/nordic.nvim",
	-- "vague2k/vague.nvim",
	-- "rose-pine/neovim",  -- rose-pine-moon for colorscheme

	-- "zenbones-theme/zenbones.nvim",
	-- dependencies = "rktjmp/lush.nvim",  -- needed for zenbones

	priority = 1000,
	config = function()
		vim.cmd("set background=dark")
		vim.cmd("colorscheme kanagawa")
	end,
}

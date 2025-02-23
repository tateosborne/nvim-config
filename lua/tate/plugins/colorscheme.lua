return {
	-- "rebelot/kanagawa.nvim",
	"neanias/everforest-nvim",
	-- "sainnhe/gruvbox-material",
    -- "akinsho/horizon.nvim",
    -- "nanotech/jellybeans.vim",
    -- "AlexvZyl/nordic.nvim",
	-- "rose-pine/neovim",  -- rose-pine-moon for colorscheme

	-- "zenbones-theme/zenbones.nvim",

	dependencies = {
        -- "rktjmp/lush.nvim",  -- needed for zenbones
    },

	priority = 1000,
	config = function()
		vim.cmd("set background=dark")
		vim.cmd("colorscheme everforest")
	end,
}

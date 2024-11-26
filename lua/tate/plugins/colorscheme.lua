return {
	--"rebelot/kanagawa.nvim",
	--"navarasu/onedark.nvim",
	"neanias/everforest-nvim",
	--"zenbones-theme/zenbones.nvim",
	priority = 1000,
	config = function()
		vim.cmd("set background=dark")
		vim.cmd("colorscheme everforest")
	end,
}

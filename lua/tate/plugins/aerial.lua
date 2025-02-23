return {
	"stevearc/aerial.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	config = function()
        local aerial = require("aerial")
		aerial.setup({
			backends = { "lsp", "treesitter", "markdown", "man" },
			layout = {
				max_width = { 40, 0.3 },
				min_width = 20,
				default_direction = "prefer_right",
			},
			show_guides = true,
            filter_kind = false,
			highlight_on_hover = true,
			manage_folds = false,
			autojump = false,
		})

		vim.cmd([[
            highlight! link AerialClass Function
            highlight! link AerialConstructor Function
            highlight! link AerialFunction Function
            highlight! link AerialMethod Function
            highlight! link AerialVariable Identifier
            highlight! link AerialEnum Keyword
            highlight! link AerialConstant Constant
            highlight! link AerialInterface Type
            highlight! link AerialModule Statement
            highlight! link AerialProperty Identifier
            highlight! link AerialTypeParameter Type
        ]])

		-- Keymaps
		local keymap = vim.keymap
		keymap.set("n", "<leader>p", "<cmd>AerialToggle!<CR>", { desc = "Toggle symbol outline" })
	end,
}

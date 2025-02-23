return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		lualine.setup({
			options = {
				theme = "everforest",
				-- theme = "gruvbox-material",
				-- theme = "horizon",
				-- theme = "jellybeans",
				-- theme = "nord",
				-- theme = "auto",
				icons_enabled = true,
				component_separators = { left = "󰇝", right = "󰇝" },
				section_separators = { left = "", right = "" }, -- No section dividers
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "diff" },
				lualine_c = { "branch" },
				lualine_x = {
					function()
						return vim.fn.system("whoami"):gsub("\n", "")
					end,
					"filetype",
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			extensions = {
				"nvim-tree",
				"fzf",
				"lazy",
				"mason",
				"toggleterm",
				"trouble",
				"symbols-outline",
				"fugitive",
				"quickfix",
			},
		})
		-- 		lualine.setup({
		-- 			options = {
		-- 				-- theme = "everforest",
		-- 				-- theme = "gruvbox-material",
		-- 				-- theme = "horizon",
		-- 				-- theme = "jellybeans",
		-- 				theme = "nord",
		-- 				-- theme = "wal --theme zenburn",
		-- 				-- theme = "auto",
		-- 			},
		-- 			-- 	sections = {
		-- 			-- 		lualine_x = {
		-- 			-- 			{
		-- 			-- 				lazy_status.updates,
		-- 			-- 				cond = lazy_status.has_updates,
		-- 			-- 				color = { fg = "#ff9e64" },
		-- 			-- 			},
		-- 			-- 			{ "encoding" },
		-- 			-- 			{ "fileformat" },
		-- 			-- 			{ "filetype" },
		-- 			-- 		},
		-- 			-- 	},
		-- 		})
	end,
}

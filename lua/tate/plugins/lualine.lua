return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		local colors = {
			blue = "#65D1FF",
			green = "#3EFFDC",
			violet = "#FF61EF",
			yellow = "#FFDA7B",
			red = "#FF4A4A",
			fg = "#c3ccdc",
			bg = "#112638",
			inactive_bg = "#2c3043",
		}

		local my_lualine_theme = {
			normal = {
				a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.semilightgray },
				c = { bg = colors.inactive_bg, fg = colors.semilightgray },
			},
		}

		local ef_colors = {
			bg0 = "#323d43",
			bg1 = "#3c474d",
			bg3 = "#505a60",
			fg = "#d8caac",
			aqua = "#87c095",
			green = "#a7c080",
			orange = "#e39b7b",
			purple = "#d39bb6",
			red = "#e68183",
			grey1 = "#868d80",
		}

		local everforest = {
			normal = {
				a = { bg = ef_colors.green, fg = ef_colors.bg0, gui = "bold" },
				b = { bg = ef_colors.bg3, fg = ef_colors.fg },
				c = { bg = ef_colors.bg1, fg = ef_colors.fg },
			},
			insert = {
				a = { bg = ef_colors.fg, fg = ef_colors.bg0, gui = "bold" },
				b = { bg = ef_colors.bg3, fg = ef_colors.fg },
				c = { bg = ef_colors.bg1, fg = ef_colors.fg },
			},
			visual = {
				a = { bg = ef_colors.red, fg = ef_colors.bg0, gui = "bold" },
				b = { bg = ef_colors.bg3, fg = ef_colors.fg },
				c = { bg = ef_colors.bg1, fg = ef_colors.fg },
			},
			replace = {
				a = { bg = ef_colors.orange, fg = ef_colors.bg0, gui = "bold" },
				b = { bg = ef_colors.bg3, fg = ef_colors.fg },
				c = { bg = ef_colors.bg1, fg = ef_colors.fg },
			},
			command = {
				a = { bg = ef_colors.aqua, fg = ef_colors.bg0, gui = "bold" },
				b = { bg = ef_colors.bg3, fg = ef_colors.fg },
				c = { bg = ef_colors.bg1, fg = ef_colors.fg },
			},
			terminal = {
				a = { bg = ef_colors.purple, fg = ef_colors.bg0, gui = "bold" },
				b = { bg = ef_colors.bg3, fg = ef_colors.fg },
				c = { bg = ef_colors.bg1, fg = ef_colors.fg },
			},
			inactive = {
				a = { bg = ef_colors.bg1, fg = ef_colors.grey1, gui = "bold" },
				b = { bg = ef_colors.bg1, fg = ef_colors.grey1 },
				c = { bg = ef_colors.bg1, fg = ef_colors.grey1 },
			},
		}

		lualine.setup({
			options = {
				theme = everforest,
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}

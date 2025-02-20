return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

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

		local spaceduck_colors = {
			black = "#0f111b",
			white = "#ecf0c1",
			red = "#e33400",
			green = "#5ccc96",
			blue = "#00a3cc",
			purple = "#7a5ccc",
			yellow = "#f2ce00",
			gray = "#686f9a",
			darkgray = "#30365F",
			lightgray = "#c1c3cc",
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

		local spaceduck = {
			normal = {
				a = { bg = spaceduck_colors.gray, fg = spaceduck_colors.black, gui = "bold" },
				b = { bg = spaceduck_colors.darkgray, fg = spaceduck_colors.lightgray },
				c = { bg = spaceduck_colors.black, fg = spaceduck_colors.lightgray },
			},
			insert = {
				a = { bg = spaceduck_colors.green, fg = spaceduck_colors.black, gui = "bold" },
				b = { bg = spaceduck_colors.darkgray, fg = spaceduck_colors.lightgray },
				c = { bg = spaceduck_colors.black, fg = spaceduck_colors.lightgray },
			},
			visual = {
				a = { bg = spaceduck_colors.yellow, fg = spaceduck_colors.black, gui = "bold" },
				b = { bg = spaceduck_colors.darkgray, fg = spaceduck_colors.lightgray },
				c = { bg = spaceduck_colors.black, fg = spaceduck_colors.lightgray },
			},
			replace = {
				a = { bg = spaceduck_colors.purple, fg = spaceduck_colors.black, gui = "bold" },
				b = { bg = spaceduck_colors.darkgray, fg = spaceduck_colors.lightgray },
				c = { bg = spaceduck_colors.black, fg = spaceduck_colors.lightgray },
			},
			command = {
				a = { bg = spaceduck_colors.blue, fg = spaceduck_colors.black, gui = "bold" },
				b = { bg = spaceduck_colors.darkgray, fg = spaceduck_colors.lightgray },
				c = { bg = spaceduck_colors.black, fg = spaceduck_colors.lightgray },
			},
			terminal = {
				a = { bg = spaceduck_colors.gray, fg = spaceduck_colors.black, gui = "bold" },
				b = { bg = spaceduck_colors.darkgray, fg = spaceduck_colors.lightgray },
				c = { bg = spaceduck_colors.black, fg = spaceduck_colors.lightgray },
			},
			inactive = {
				a = { bg = spaceduck_colors.black, fg = spaceduck_colors.lightgray, gui = "bold" },
				b = { bg = spaceduck_colors.black, fg = spaceduck_colors.lightgray },
				c = { bg = spaceduck_colors.black, fg = spaceduck_colors.lightgray },
			},
		}

		lualine.setup({
			options = {
				--theme = everforest,
                -- theme = spaceduck,
                theme = "auto",
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

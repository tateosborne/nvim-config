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
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = { "diff" },
				lualine_x = {
					function()
						return vim.fn.system("whoami"):gsub("\n", "")
					end,
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			tabline = {
				lualine_a = {},
				lualine_b = {
					function()
						local filename = vim.fn.expand("%:t") -- Get the current file name
						if vim.bo.modified then
							return filename .. " " -- Append modified icon if modified
						end
						return filename
					end,
				},
				lualine_c = {},
				lualine_x = {
					function()
						local clients = vim.lsp.get_clients()
						local client = ""
						local jedi_connected = false

						for _, c in ipairs(clients) do
							client = c.name
							if c.name == "jedi_language_server" then
								jedi_connected = true
								break
							end
						end

						if jedi_connected then
							local conda_env = os.getenv("CONDA_DEFAULT_ENV")
							if conda_env then
								return conda_env
							else
								return client
							end
						else
							return client
						end
					end,
				},
				lualine_y = { "filetype" },
				lualine_z = {},
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
	end,
}

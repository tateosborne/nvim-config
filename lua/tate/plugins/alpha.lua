return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                              ▓▓                                                                                       ▓▓                          ]],
			[[                                                              󰯉                                                                         ▓▓          ]],
			[[                                                                                    ▓▓                                                              ]],
			[[                                              ▒▒                                                                                                    ]],
			[[                                                                     ▓▓░░██▒▒                                                                      ]],
			[[                                                                   ▒▒██████████                                                                   ]],
			[[                                                                    ████████████▒▒                        ▓▓                                        ]],
			[[                                            ▒▒██▒▒▓▓▓▓              ██████████████              ▓▓▓▓▓▓░░░░                            󱎃             ]],
			[[                                          ░░██████▒▒▓▓              ██████████████            ▓▓▓▓▒▒██████░░                                        ]],
			[[                                          ██████████▓▓▓▓            ██████████████            ▓▓▓▓██████████                                        ]],
			[[             󰯉                          ▒▒██████████▓▓▓▓            ████████████▓▓            ▓▓▓▓██████████▓▓                                      ]],
			[[                      ▓▓░░██▒▒▓▓        ▓▓██████████▓▓▓▓              ████████▓▓              ▓▓▓▓██████████▓▓      ▓▓▓▓██░░▓▓                      ]],
			[[                    ▓▓██████▒▒▓▓▓▓▓▓      ████████░░▒▒                                        ▓▓▒▒░░████████      ▓▓▒▒▓▓██████                      ]],
			[[                    ████████▓▓▓▓▒▒▓▓        ████░░▓▓▓▓                                          ▓▓▓▓▒▒████        ▒▒▓▓▒▒██████▒▒                   ]],
			[[                    ████████▓▓▓▓▓▓▓▓                                                                              ▒▒▓▓▒▒████████                    ]],
			[[                    ████████▓▓▓▓▓▓▒▒              ▓▓                                                             ▓▓▓▓▒▒████████                    ]],
			[[                  ▓▓▒▒██████▓▓▓▓▓▓▓▓                                                                          ▓▓▒▒▓▓▓▓▒▒██████                      ]],
			[[    ▓▓░░██▒▒▓▓        ░░████▒▒▓▓▓▓                                                                                  ▒▒▒▒████▒▒        ▓▓░░██░░▓▓    ]],
			[[  ▓▓██░░▓▓▒▒▓▓▒▒    ▓▓  ▒▒▒▒▓▓                  ▓▓                                         ▒▒                         ▓▓▒▒▒▒▓▓      ▓▓▒▒▓▓▒▒████    ]],
			[[  ░░██▓▓▓▓▒▒▓▓▓▓▓▓                                                      󱎃                                                         ▓▓▒▒▓▓▓▓▒▒░░██▓▓  ]],
			[[  ████▓▓▓▓▓▓▓▓▓▓▓▓                                                                                                                ▓▓▓▓▓▓▓▓▓▓▓▓████  ]],
			[[  ████▓▓▓▓▓▓▓▓▒▒▓▓                                       ____ ____ ____ ____ ____ ____                                            ▓▓▓▓▓▓▓▓▓▓▓▓████  ]],
			[[  ░░██▓▓▓▓▓▓▓▓▓▓▓▓                                      ||n |||e |||o |||v |||i |||m ||                                           ▓▓▒▒▒▒▓▓▒▒▒▒██▓▓  ]],
			[[    ░░██▒▒▓▓▓▓▓▓                  ▒▒                    ||__|||__|||__|||__|||__|||__||                                             ▓▓▓▓▒▒░░██░░    ]],
			[[        ▓▓▓▓                󱎃           ▓▓              |/__\|/__\|/__\|/__\|/__\|/__\|                                                 ▓▓          ]],
			[[                                                                                               ▒▒                                                  ]],
			[[                                                                                          ▓▓                                                        ]],
			[[                                                                                                                     󰯉                      ▓▓      ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼  > Find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("l", "󰒲  > Lazy", "<cmd>Lazy<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.opts)

		local lazy_stats = require("lazy").stats()
		vim.defer_fn(function()
			dashboard.section.footer.val = {
				"Neovim loaded " .. lazy_stats.loaded .. "/" .. lazy_stats.count .. " plugins in " .. string.format(
					"%.2f",
					lazy_stats.startuptime
				) .. "ms",
			}
			require("alpha").redraw()
		end, 100)

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}

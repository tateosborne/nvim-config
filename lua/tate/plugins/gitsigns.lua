return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
			end

			-- Navigation
			map("n", "]h", gs.next_hunk, "Next Hunk")
			map("n", "[h", gs.prev_hunk, "Prev Hunk")

			-- Staging
			map({ "n", "v" }, "<leader>hs", gs.stage_hunk, "Stage hunk")
			map("n", "<leader>hS", gs.stage_buffer, "Stage buffer")

			-- Resetting
			map({ "n", "v" }, "<leader>hr", gs.reset_hunk, "Reset hunk")
			map("n", "<leader>hR", gs.reset_buffer, "Reset buffer")

			-- Undo
			map("n", "<leader>hu", gs.undo_stage_hunk, "Undo stage hunk")

			-- Preview
			map("n", "<leader>hp", gs.preview_hunk, "Preview hunk")

			-- Blame
			map("n", "<leader>hb", function()
				gs.blame_line({ full = true })
			end, "Blame line")
			map("n", "<leader>hB", gs.toggle_current_line_blame, "Toggle line blame")

			-- Diff
			map("n", "<leader>hd", gs.diffthis, "Diff this")
			map("n", "<leader>hD", function()
				gs.diffthis("~")
			end, "Diff index")

			-- Text object
			map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select hunk")
		end,
	},
}

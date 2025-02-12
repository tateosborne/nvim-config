vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", "<cmd>w<CR>", { silent = true, desc = "Save buffer" })
keymap.set("n", "<C-q>", "<cmd>q<CR>", { silent = true, desc = "Quit buffer" })

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })
keymap.set("n", "<C-z>", "<ESC>", { desc = "Fallback keymap to stop crash" })
keymap.set("i", "<C-z>", "<ESC>", { desc = "Fallback keymap to stop crash" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<C-n>", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<C-x>", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<C-s>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<C-a>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

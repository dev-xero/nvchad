require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ca", function() require("tiny-code-action").code_action() end, { desc = "LSP code action" })
map("n", "<C-S-C>", '"+y', { desc = "Copy system clipboard" })
map("n", "<C-S-V>", '"+p', { desc = "Paste system clipboard" })

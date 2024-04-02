-- General
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope.nvim
vim.keymap.set("n", "<leader>pf", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>pg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>pb", ":Telescope buffers<CR>")

-- indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Comment.nvim
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false }) -- <C-_> is actually for ctrl - forwardslash
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

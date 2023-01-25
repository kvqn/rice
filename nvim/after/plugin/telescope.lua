
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", telescope.find_files, {})
vim.keymap.set("n", "<leader>pg", telescope.live_grep, {})


local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", telescope.find_files, {})
vim.keymap.set("n", "<leader>pg", telescope.live_grep, {})

require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = require('telescope.actions').move_selection_next,
                ["<C-k>"] = require('telescope.actions').move_selection_previous,
            },
        },

        file_ignore_patterns = {
            "^node_modules$",
            "^out$",
            "^__pycache__$",
            "^.git$"
        },
    },

    pickers = {
        find_files = {
            hidden = true
        }
    }
}


local telescope = require("telescope.builtin")

require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = require('telescope.actions').move_selection_next,
                ["<C-k>"] = require('telescope.actions').move_selection_previous,
            },
        },
    },

    pickers = {
        find_files = {
            find_command = {'rg', '--files'},
            hidden=true,
        },
        live_grep = {
            find_command = {'rg'},
            hidden=true,
        }
    }
}

vim.keymap.set("n", "<leader>pf", telescope.find_files, {})
vim.keymap.set("n", "<leader>pg", telescope.live_grep, {})

-- This file contains remaps.

local dotrepeat = require("util.dotrepeat")

vim.g.mapleader = " "

-- Resize splits
vim.keymap.set("n", "<leader>-", function() vim.cmd("vertical resize -1") dotrepeat("<leader>-") end)
vim.keymap.set("n", "<leader>=", function() vim.cmd("vertical resize +1") dotrepeat("<leader>=") end)
vim.keymap.set("n", "<leader>_", function() vim.cmd("horizontal resize -1") dotrepeat("<leader>_") end)
vim.keymap.set("n", "<leader>+", function() vim.cmd("horizontal resize +1") dotrepeat("<leader>+") end)


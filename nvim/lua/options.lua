-- Vim optionsa

local set=vim.opt

vim.syntax = "on"
set.errorbells = false
set.wrap = false

set.relativenumber = true
set.number = true

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.smartindent = true

set.ignorecase = true
set.smartcase = true
set.incsearch = true

set.scrolloff = 8

set.cc = {120}
-- set.signcolumn = true

set.hidden = true
set.swapfile = false

vim.cmd("set clipboard+=unnamedplus")

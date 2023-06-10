-- Vim optionsa

local set = vim.opt

vim.syntax = "on"
set.errorbells = false
set.wrap = false

set.relativenumber = true
set.number = true

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true

set.smartindent = true

set.ignorecase = true
set.smartcase = true
set.incsearch = true

set.scrolloff = 8

set.cc = { 120 }
-- set.signcolumn = true

set.hidden = true
set.swapfile = false

vim.cmd("set clipboard+=unnamedplus")
set.hlsearch = false
set.foldenable = false

set.cursorline = true
set.background = "dark"
set.encoding = "utf-8"

vim.g["netrw_list_hide"] = table.concat({
	"__pycache__",
	".git",
}, ",")

set.foldmethod = "indent"
set.termguicolors = true

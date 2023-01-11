
return function (keymap)

    vim.fn['repeat#set'](vim.api.nvim_replace_termcodes(keymap, true, false, true), vim.v.count)

end




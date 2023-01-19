local match = string.match

function SortImports()

    local filename = vim.fn.expand('%')
    print(filename)
    local filetype
    if match(filename, ".py$") then filetype = "py"
    else
        print("Filetype not supported")
        return
    end

    local line_no = 1
    while true do
        local line = vim.fn.getline(line_no)
        if filetype == "py" then
            if not (match(line, "^import") or match(line, "^from")) then break end
        end
        line_no = line_no + 1
    end

    local buffer = vim.api.nvim_get_current_buf()
    local lines = vim.api.nvim_buf_get_lines(buffer, 0, line_no-1, false)
    --
    -- print("before")
    -- print(table.concat(lines, "\n"))
    table.sort(lines)
    -- print("after")
    -- print(table.concat(lines, "\n"))

    vim.api.nvim_buf_set_lines(buffer, 0, line_no-1, false, lines)

end


vim.api.nvim_command('command! -nargs=0 SortImports lua SortImports()')

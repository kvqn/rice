
return {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = {
                        'E122', -- continuation line missing indentation or outdented
                        'E203', -- whitespace before ':'
                        'E251', -- unexpected spaces around keyword / parameter equals
                        'E302', -- expected 2 blank lines, found 1
                        'E305', -- expected 2 blank lines after class or function definition, found 1
                        'E402', -- module level import not at top of file
                        'E501', -- line too long
                        'W391', -- blank line at end of file
                        'E225', -- missing whitespace around operator
                        'E266', -- too many leading '#' for block comment
                        'E712', -- comparison to True should be 'if cond is True:' or 'if cond:'
                        'E222', -- multiple spaces after operator
                        'E221', -- multiple spaces before operator
                        'E241', -- multiple spaces after ':'
                    },
                    maxLineLength = 120,
                }
            }
        }
    }
}

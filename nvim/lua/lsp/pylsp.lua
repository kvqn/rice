
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
                    },
                    maxLineLength = 120,
                }
            }
        }
    }
}

local formatter = require("formatter")

formatter.setup({
	filetype = {
		typescriptreact = {
			function()
				return {
					exe = "npx prettier",
					args = {
						"--parser typescript",
					},
					stdin = true,
				}
			end,
		},
		typescript = {
			function()
				return {
					exe = "npx prettier",
					args = {
						"--parser typescript",
					},
					stdin = true,
				}
			end,
		},
		markdown = {
			function()
				return {
					exe = "npx prettier",
					args = {
						"--parser markdown",
					},
					stdin = true,
				}
			end,
		},
		lua = {
			function()
				return {
					exe = "stylua",
					args = {
						"-",
					},
					stdin = true,
				}
			end,
		},
    cpp = {
      function()
        return {
          exe = "clang-format",
          args = {
            -- "-assume-filename=foo.cpp",
            "-style=file",
          },
          stdin = true,
        }
      end,
    }
	},
})

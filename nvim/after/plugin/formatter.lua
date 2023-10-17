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
					exe = "bun x prettier",
					args = {
						"--parser typescript",
					},
					stdin = true,
				}
			end,
		},
		svg = {
			function()
				return {
					exe = "npx prettier",
					args = {
						"--parser html",
					},
					stdin = true,
				}
			end,
		},
		javascript = {
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

		javascriptreact = {
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
					exe = "mdformat",
					args = {
            "--wrap 119",
						"-",
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
    },
    python = {
      function()
        return {
          exe = "black",
          args = {
            "-",
          },
          stdin = true,
        }
      end,
    },
		css = {
			function()
				return {
					exe = "npx prettier",
					args = {
						"--parser css",
					},
					stdin = true,
				}
			end,
		},
	},
})

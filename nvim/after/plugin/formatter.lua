local formatter = require "formatter"

formatter.setup {
  filetype = {
      typescriptreact = {
        function()
          return {
            exe = "npx prettier",
            args = {
              "--parser typescript",
            },
            stdin = true
          }
        end
        }
    }
  }

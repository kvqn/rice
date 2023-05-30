local formatter = require "formatter"

formatter.setup {
  filetype = {
      typescriptreact = {
        function()
          return {
            exe = "/usr/bin/prettier",
            args = {
              "--config ~/.config/nvim/prettier/typescriptreact.json",
              "--parser typescript",
            },
            stdin = true
          }
        end
        }
    }
  }

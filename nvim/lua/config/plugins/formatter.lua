return {
  {
    "mhartington/formatter.nvim",
    config = function()
      local formatter = require('formatter')
      local defaults = require('formatter.defaults')

      formatter.setup({
        filetype = {
          -- css = { require(file_types.) },
          -- json = { require(defaults.prettier) },
          lua = { require("formatter.filetypes.lua").stylua },
          toml = { require("formatter.filetypes.toml").prettier },
          -- toml = { },
          -- yaml = { require("formatter.filetypes.lua") },
        }
      })
    end
  }
}
    -- event = { "VeryLazy" },
    -- opts = function()
    --   vim.api.nvim_create_autocmd("BufWritePost", {
    --     group = Utils.augroup("format"),
    --     pattern = { "*" },
    --     command = "FormatWrite",
    --   })
    --
    --   local js_ts_filetype = {
    --     require("formatter.defaults").eslint_d,
    --     require("formatter.defaults").prettierd,
    --   }
    --
    --   return {
    --     filetype = {
    --       lua = { require("formatter.filetypes.lua").stylua },
    --       css = { require("formatter.defaults").prettierd },
    --       html = { require("formatter.defaults").prettierd },
    --       json = { require("formatter.defaults").prettierd },
    --       yaml = { require("formatter.defaults").prettierd },
    --       javascript = js_ts_filetype,
    --       javascriptreact = js_ts_filetype,
    --       typescript = js_ts_filetype,
    --       typescriptreact = js_ts_filetype,
    --     },
    --   }
    -- end,
  -- },
-- }

-- return {
--   'mhartington/formatter.nvim',
--   config = function()
--     local formatter = require('formatter')
--
--     formatter.setup {}
--   end
-- }

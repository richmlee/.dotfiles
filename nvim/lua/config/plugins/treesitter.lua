return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function() 
    local treesitter_configs = require('nvim-treesitter.configs')

    treesitter_configs.setup({
      ensure_installed = {
        "lua",
        "javascript",
        "html",
        "java",
        "ruby",
        "json",
        "python",
        "typescript"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}


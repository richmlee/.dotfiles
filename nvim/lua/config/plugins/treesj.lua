return {
  'Wansmer/treesj',
  keys = { '<space>m', '<space>j', '<space>s' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    local treesj = require('treesj')

    treesj.setup({--[[ your config ]]})
  end
}

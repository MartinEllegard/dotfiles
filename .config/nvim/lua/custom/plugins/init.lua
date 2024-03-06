-- See the kickstart.nvim README for more information
return {

  { -- file tree
    'nvim-tree/nvim-tree.lua',
    config = function()
      local api = require 'nvim-tree.api'
      vim.keymap.set('n', '<leader>f', api.tree.toggle, { desc = 'Filetree: Toggle' })
      require('nvim-tree').setup {
        sort = {
          sorter = 'case_sensitive',
        },
        view = { width = 30 },
        renderer = { group_empty = true },
        filters = { dotfiles = false },
      }
    end,
  },
}

local telescope = require('telescope')

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ['<C-h>'] = 'which_key',
        ['<ESC>'] = require('telescope.actions').close,
      },
    },
    winblend = 20,
  },
  pickers = {
    find_files = {
      theme = 'dropdown',
    },
    live_grep = {
      theme = 'dropdown',
    },
    buffers = {
      theme = 'dropdown',
    },
    help_tags = {
      theme = 'dropdown',
    },
  },

}

telescope.load_extension('fzf')

local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

vim.keymap.set('n', '<Leader>ff', builtin.find_files)
vim.keymap.set('n', '<Leader>fw', builtin.live_grep)
vim.keymap.set('n', '<Leader>fb', builtin.buffers)
vim.keymap.set('n', '<Leader>fh', builtin.help_tags)

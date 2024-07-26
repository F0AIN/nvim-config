vim.api.nvim_set_var('loaded_netrw', 1)
vim.api.nvim_set_var('loaded_netrwPlugin', 1)

local function my_nvim_tree_on_enter(bufnr)

  local api = require('nvim-tree.api')

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 's', 'NONE', { buffer = bufnr })

end
require('nvim-tree').setup {
  view = {
    width = '30%',
    side = 'right',
    signcolumn = 'no',
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = 'name',
    icons = {
      glyphs = {
        git = {
          unstaged = '!', renamed = '»', untracked = '?', deleted = '✘',
          staged = '✓', unmerged = '', ignored = '◌',
        },
      },
    },
  },

  actions = {
    expand_all = {
      max_folder_discovery = 100,
      exclude = { '.git', 'target', 'build' },
    },
  },

  on_attach = my_nvim_tree_on_enter,
}
vim.api.nvim_create_user_command('Ex', function() vim.cmd.NvimTreeToggle() end, {})
vim.keymap.set('n', '<leader>ex', vim.cmd.NvimTreeToggle)

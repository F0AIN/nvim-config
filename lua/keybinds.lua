vim.keymap.set('n', ';', ':')
vim.keymap.set('n', 'j', 'gj', { noremap = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true })
vim.keymap.set('n', 'gj', 'j', { noremap = true })
vim.keymap.set('n', 'gk', 'k', { noremap = true })
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'X', '"_X')
vim.keymap.set('n', 'ZZ', '<NOP>')
vim.keymap.set('n', 'ZQ', '<NOP>')
vim.keymap.set('n', '<Up>', '<C-y>')
vim.keymap.set('n', '<Down>', '<C-e>')

-- folding
vim.api.nvim_set_keymap('n', '<Tab>', 'zo', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', 'zc', { noremap = true, silent = true })

-- Disable arrow keys
vim.keymap.set('n', 's', '<NOP>')
vim.keymap.set('n', 'S', '<NOP>')

-- split
vim.keymap.set('n', 'ss', ':split<CR>')
vim.keymap.set('n', 'sv', ':vsplit<CR>')

-- pane navigation
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sl', '<C-w>l')
vim.keymap.set('n', 'sJ', '<C-w>J')
vim.keymap.set('n', 'sK', '<C-w>K')
vim.keymap.set('n', 'sL', '<C-w>L')
vim.keymap.set('n', 'sH', '<C-w>H')

-- buffer navigation
vim.keymap.set('n', 'sb', ':b#<CR>')
vim.keymap.set('n', 'sn', ':bnext<CR>')
vim.keymap.set('n', 'sp', ':bprev<CR>')
vim.keymap.set('n', '<Leader>q', ':bdelete<CR>')

-- reload
vim.api.nvim_create_user_command('ReloadConfig', 'source $MYVIMRC', {})

local wk = require("which-key")
wk.add({
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n" },
})


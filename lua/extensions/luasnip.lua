require('luasnip.loaders.from_vscode').lazy_load {
  paths = {
    vim.fn.stdpath('data') .. '/site/pack/packer/start/friendly-snippets',
    './snippets',
  },
}

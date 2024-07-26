return {
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    config = function() require('extensions.telescope') end,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
  },
  {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require'nvim-web-devicons'.setup {
        default = true;
      }
    end
  },
}

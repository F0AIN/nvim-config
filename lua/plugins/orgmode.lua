return {
  {'dhruvasagar/vim-table-mode'},
  {
    'akinsho/org-bullets.nvim',
    config = function()
      require('org-bullets').setup()
    end,
  },
  {
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function ()
      require("headlines").setup {
        markdown = {
          headline_highlights = false,
        },
      }
    end
  },
}

return {
  -- color scheme
  -- {
  --   'dracula/vim',
  --   lazy = false,
  --   config = function()
  --     -- load the colorscheme here
  --     -- vim.cmd([[colorscheme dracula]])
  --   end,
  -- },
  -- {
  --   'danilo-augusto/vim-afterglow',
  --   lazy = false,
  --   config = function ()
  --     -- vim.cmd([[colorscheme afterglow]])
  --   end
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function ()
      vim.cmd([[colorscheme tokyonight-night]])
    end
  },
  -- UI
  {
    "j-hui/fidget.nvim",
    config = function() require("extensions.fidget") end,
    dependencies = { 'neovim/nvim-lspconfig' },
  },
  {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.theta'.config)
    end,
  },
  {
    'petertriho/nvim-scrollbar',
    event = "VeryLazy",
    config = function()
      require('scrollbar').setup()
      require('scrollbar.handlers.search').setup()
    end,
    dependencies = {
      'kevinhwang91/nvim-hlslens',
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    config = function() require('extensions.nvim-tree') end,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
  },

  -- 色表示
  {
    "uga-rosa/ccc.nvim",
    event = "VeryLazy",
    config = function()
      require("ccc").setup()
    end,
  },

  -- bar
  {
    "romgrk/barbar.nvim",
    event = "VeryLazy",
  },

  -- lsp
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
          }
      }
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
  },


  {
    "SmiteshP/nvim-navic",
    config = function() require 'extensions.nvim-navic' end,
    dependencies = { 'neovim/nvim-lspconfig' },
  },
  {
    "SmiteshP/nvim-navbuddy",
    config = function() require 'extensions.nvim-navbuddy' end,
    dependencies = {
      'neovim/nvim-lspconfig', 'SmiteshP/nvim-navic', 'MunifTanjim/nui.nvim',
      'numToStr/Comment.nvim', 'nvim-telescope/telescope.nvim'
    },
  },

  -- cmp
  {
    'hrsh7th/nvim-cmp',
    config = function() require 'extensions.nvim-cmp' end,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-cmdline', 'hrsh7th/cmp-path', 'onsails/lspkind-nvim',
      {
        'L3MON4D3/LuaSnip',
        branch = "v1.*",
        build = 'make install_jsregexp',
        config = function() require 'extensions.luasnip' end,
        dependencies = {
          'saadparwaiz1/cmp_luasnip', 'rafamadriz/friendly-snippets'
        },
      },
    },
  },

  -- witch-key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
}

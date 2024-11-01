return {
  {
    "OXY2DEV/markview.nvim",
    lazy = false,      -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway
    config = function ()
      require("markview").setup({
        injections = {
          languages = {
            markdown = {
              --- This disables other
              --- injected queries!
              overwrite = true,
              query = [[
                    (section
                        (atx_headng) @injections.mkv.fold
                        (#set! @fold))
                ]]
            }
          }
        }
      });
    end,

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    }
  },
}

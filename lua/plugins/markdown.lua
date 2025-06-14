-- 新しいMarkdownファイルを作成し、テンプレートを挿入するコマンド
vim.api.nvim_create_user_command('NewMarkdownFile', function(opts)
  -- 現在時刻をフォーマットしてファイル名を作成
  local timestamp = os.date("%Y%m%d%H%M%S")
  local filename = opts.args ~= "" and opts.args or (timestamp .. ".md")

  -- 新しいバッファを開く
  vim.cmd('edit ' .. filename)
  -- ファイルタイプをmarkdownに設定
  vim.bo.filetype = 'markdown'
end, {});

return {
  {
    "OXY2DEV/markview.nvim",
    lazy = false,      -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway
    config = function ()
      require("markview").setup({});
    end,

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    }
  },
}

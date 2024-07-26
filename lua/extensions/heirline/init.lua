local colors = require("extensions.heirline.colors")

local StatusLine = require("extensions.heirline.status")
local WinBar = require("extensions.heirline.winbar")
local TabLine = require("extensions.heirline.tabline")

require("heirline").setup {
  statusline = StatusLine,
  winbar = WinBar,
  tabline = TabLine,
  opts = {
    colors = colors,
  }
}


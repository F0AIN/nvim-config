require('fidget').setup {
  notification = {
    filter = vim.log.levels.TRACE,
    window = {
      border = "double",
      winblend = 150,
    }
  },
  logger = {
    level = vim.log.levels.TRACE
  },
}
vim.notify = require("fidget.notification").notify

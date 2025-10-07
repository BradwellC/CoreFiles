return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    comment.setup({
      padding = true,
      sticky = true,
      ignore = nil,
      toggler = {
        line = 'tcl',
        block = 'tcb',
      },
      opleader = {
        line = 'gc',
        block = 'cb',
      },
      extra = {
        above = 'gcO',
        below = 'gco',
        eol = 'gcA',
      },
      mappings = {
        basic = true,
        extra = true,
      },
      pre_hook = nil,
      post_hook = nil,
    })
  end,
}

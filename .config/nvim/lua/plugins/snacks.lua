return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    dashboard = { enabled = true },
    indent = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    lazygit = { enabled = true }
  },
}

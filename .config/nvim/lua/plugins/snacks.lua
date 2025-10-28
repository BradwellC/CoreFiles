return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		indent = { enabled = true },
		input = { enabled = true },
		notifier = {
			timeout = 5000,
		},
		statuscolumn = { enabled = true },
	},
}

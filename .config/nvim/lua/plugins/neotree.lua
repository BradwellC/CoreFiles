return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },

  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
        width = 32,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
      },
      default_component_configs = {
        container = {
          enable_character_fade = true,
        },
        indent = {
          indent_size = 2,
          padding = 1, -- extra padding on left hand side
          -- indent guides
          with_markers = true,
          indent_marker = '│',
          last_indent_marker = '└',
          highlight = 'NeoTreeIndentMarker',
          -- expander config, needed for nesting files
          with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
          expander_collapsed = '',
          expander_expanded = '',
          expander_highlight = 'NeoTreeExpander',
        },
      },
      symlink_target = {
        enabled = false,
      },
    })

    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
    vim.keymap.set("n", "<leader>e", ":Neotree toggle position=left<CR>", { noremap = true, silent = true }) -- focus file explorer
    vim.keymap.set("n", "<leader>ngs", ":Neotree float git_status<CR>", { noremap = true, silent = true }) -- open git status window
  end,
}

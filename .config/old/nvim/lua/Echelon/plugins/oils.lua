return {
  'stevearc/oil.nvim',
  dependencies = {
    { "echasnovski/mini.icons", opts = {} },
  },
  lazy = false,
  config = function()
    local oil = require('oil')

    oil.setup({
      default_file_explorer = true,
      columns = { },
      keymaps = {
        ['<C-h>'] = false,
        ['<C-c>'] = false,
        ['<M-h>'] = 'actions.select_split',
        ['q'] = 'actions.close'
      },
      delete_to_trash = true,
      view_options = {
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
    })

    -- Keymaps
    vim.keymap.set('n', '<leader>eo', '<CMD>Oil<CR>', { desc = "[E]xplorer [O]pen" })
    vim.keymap.set('n', '<leader>ef', require('oil').toggle_float, { desc = '[E]xplorer [F]loat' })
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'oil',
      callback = function()
        vim.opt_local.cursorline = true
      end
    })

  end
}

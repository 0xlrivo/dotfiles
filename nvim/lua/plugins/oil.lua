return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  config = function()
    require('oil').setup()
    vim.keymap.set('n', '<leader>b', require('oil').open, { desc = 'Open Oil file explorer' })
  end,
}


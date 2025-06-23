return {
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  keys = {
    { '<leader>?', require('telescope.builtin').oldfiles, desc = '[?] Find recently opened files' },
    -- Add all other telescope keymaps here
  },
  opts = {
    -- your telescope options here
  },
}

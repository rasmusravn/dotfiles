return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope.builtin')
    vim.keymap.set('n', '<leader>?', telescope.oldfiles, { desc = '[?] Find recently opened files' })
    vim.keymap.set('n', '<leader><space>', telescope.find_files, { desc = '[ ] Find files' })
    vim.keymap.set('n', '<leader>f', telescope.live_grep, { desc = '[F] Find text' })
    vim.keymap.set('n', '<leader>b', telescope.buffers, { desc = '[B] Find buffers' })
  end,
}

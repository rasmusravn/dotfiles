return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  config = function()
    local wk = require 'which-key'

    wk.setup()

    wk.register({
      c = { name = '+Code' },
      d = { name = '+Document' },
      r = { name = '+Rename' },
      s = { name = '+Search' },
      w = { name = '+Workspace' },
      t = { name = '+Toggle' },
      h = { name = 'Git Hunk' },
    }, { prefix = '<leader>' })

    -- visual mode
    wk.register({
      h = { 'Git Hunk' },
    }, { prefix = '<leader>', mode = 'v' })
  end,
}

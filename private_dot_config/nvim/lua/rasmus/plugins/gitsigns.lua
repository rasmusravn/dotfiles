-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    signs = {
      add = { text = "│" },
      change = { text = "│" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
    on_attach = function(bufnr)
      local gitsigns = require("gitsigns")

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map("n", "]c", function()
        if vim.wo.diff then
          return "]c"
        end
        vim.schedule(function()
          gitsigns.nav_hunk("next")
        end)
        return "<Ignore>"
      end, { expr = true, desc = "Jump to next git [c]hange" })

      map("n", "[c", function()
        if vim.wo.diff then
          return "[c"
        end
        vim.schedule(function()
          gitsigns.nav_hunk("prev")
        end)
        return "<Ignore>"
      end, { expr = true, desc = "Jump to previous git [c]hange" })

      -- Actions
      map({ "n", "v" }, "<leader>hs", ":Gitsigns stage_hunk<CR>", { desc = "Stage git [h]unk" })
      map({ "n", "v" }, "<leader>hr", ":Gitsigns reset_hunk<CR>", { desc = "Reset git [h]unk" })
      map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Stage git buffer" })
      map("n", "<leader>hu", gitsigns.undo_stage_hunk, { desc = "Undo stage hunk" })
      map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Reset git buffer" })
      map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview git hunk" })
      map("n", "<leader>hb", gitsigns.blame_line, { desc = "Git blame line" })
      map("n", "<leader>hd", gitsigns.diffthis, { desc = "Git diff against index" })
      map("n", "<leader>hD", function() gitsigns.diffthis("~") end, { desc = "Git diff against last commit" })

      -- Toggles
      map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "Toggle git blame line" })
    end,
  },
}

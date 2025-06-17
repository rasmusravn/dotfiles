return {
	"folke/which-key.nvim",
	event = "VimEnter",
	config = function()
		-- In your which-key setup file:
		local wk = require("which-key")

		wk.register({
			-- Normal mode <leader> mappings (old "+Name" becomes group = "Name")
			{ "<leader>c", group = "Code" },
			{ "<leader>d", group = "Document" },
			{ "<leader>h", group = "Git Hunk" }, -- This would be the group for git hunk related commands
			{ "<leader>r", group = "Rename" },
			{ "<leader>s", group = "Search" },
			{ "<leader>t", group = "Toggle" },
			{ "<leader>w", group = "Workspace" },

			-- Your actual Git Hunk command for normal mode (if you have one at <leader>h)
			-- If `<leader>h` *is* the command, you'd change the above line to:
			-- { "<leader>h", desc = "Git Hunk (command name)", mode = "n" },
			-- and make any actual sub-commands like `<leader>h s` for `Git Hunk Stage` etc.

			-- Visual mode <leader>h mapping
			{ "<leader>h", desc = "Git Hunk (Visual Mode)", mode = "v" },
			-- Note: The `mode = "v"` here explicitly states it's for visual mode.
			-- You might have specific commands nested under `<leader>h` in visual mode too,
			-- so this `desc` should reflect what that specific `<leader>h` *does* in visual mode.
		}, { prefix = "<leader>" })

		-- Important: Any nested mappings for +Code, +Document, etc.,
		-- should continue to be registered within their respective groups.
		-- For example:
		-- wk.register({
		--   f = { ":Telescope find_files<CR>", "Find Files" },
		-- }, { prefix = "<leader>c" }) -- This means <leader>c f
	end,
}

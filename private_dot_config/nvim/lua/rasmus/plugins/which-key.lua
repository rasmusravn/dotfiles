return {
	"folke/which-key.nvim",
	event = "VimEnter",
	config = function()
		-- In your which-key setup file:
		local wk = require("which-key")

		wk.register({
			{ "<leader>", group = "Workspace" },
			{ "<leader>", group = "Git Hunk" },
			{ "<leader>", group = "Rename" },
			{ "<leader>", group = "Search" },
			{ "<leader>", group = "Document" },
			{ "<leader>", group = "Code" },
			{ "<leader>", group = "Toggle" },
			{ "<leader>", desc = "<leader>h", mode = "v" },
		})

		-- Important: Any nested mappings for +Code, +Document, etc.,
		-- should continue to be registered within their respective groups.
		-- For example:
		-- wk.register({
		--   f = { ":Telescope find_files<CR>", "Find Files" },
		-- }, { prefix = "<leader>c" }) -- This means <leader>c f
	end,
}

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Keybindings
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

		-- Configuration for Neo-tree
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = true,
				group_empty_dirs = true,
				hide_dotfiles = false, -- Set to false to show hidden files
				filtered_items = {
					hide_dotfiles = false, -- Show hidden files
					hide_gitignored = false, -- Optional: Show gitignored files
				},
			},
		})
	end,
}


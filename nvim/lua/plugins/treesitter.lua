return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"go",
				"json",
				"nix",
				"typescript",
				"java",
				"html",
				"css",
				"javascript",
				"tsx",
			},
			sync_install = false,
			highlight = {
				enable = true,
			},
		})

		vim.keymap.set("n", "<leader>t", function()
			if type(vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()]) == "table" then
				print("Treesitter is active for the current buffer")
			else
				print("Treesitter is NOT active for the current buffer")
			end
		end)
	end,
}

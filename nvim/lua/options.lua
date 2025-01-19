vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.signcolumn = "yes"

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.WARN] = "",
		},
	},
})

vim.keymap.set("n", "<leader>w", function()
	vim.api.nvim_buf_delete(0, {})
end)

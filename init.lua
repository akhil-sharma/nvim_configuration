print("Advent of Neovim")
require("config.lazy")

print("initializing custom vim settings and keymaps")
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")


-- Highlight when yanking text
--  try it with `yap` in normal mode
--  see `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking text',
	group = vim.api.nvim_create_augroup('kickstart-highlight_yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

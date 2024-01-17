vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*" },
	callback = function()
	vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
	end,
})

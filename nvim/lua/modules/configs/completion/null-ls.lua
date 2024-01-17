return function()
	-- For setup guide, check https://github.com/jay-babu/mason-null-ls.nvim
	local null_ls = require("null-ls")
	local mason_null_ls = require("mason-null-ls")
	local formatting = null_ls.builtins.formatting

	null_ls.setup({
		debug = false,
		update_in_insert = false,
		diagnostics_format = "[#{s} #{c}] #{m}",
		sources = {
			-- Set sources that are not supported by `mason.nvim` here like `dart_format`
			formatting.dart_format,
		},
	})

	mason_null_ls.setup({
		ensure_installed = require("core.settings").null_ls,
		automatic_installation = true,
		handlers = {},
	})

	require("completion.formatting").configure_format_on_save()
end

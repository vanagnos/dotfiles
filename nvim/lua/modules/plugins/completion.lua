local completion = {}

completion["neovim/nvim-lspconfig"] = {
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	config = require("completion.lsp"),
	dependencies = {
		{ "ray-x/lsp_signature.nvim" },
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{
			"glepnir/lspsaga.nvim",
			config = require("completion.lspsaga"),
		},
		{
			"jose-elias-alvarez/null-ls.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"jay-babu/mason-null-ls.nvim",
			},
			config = require("completion.null-ls"),
		},
	},
}
completion["hrsh7th/nvim-cmp"] = {
	lazy = true,
	event = "InsertEnter",
	config = require("completion.cmp"),
	dependencies = {
		{
			"L3MON4D3/LuaSnip",
			--dependencies = { "rafamadriz/friendly-snippets" },
			config = require("completion.luasnip"),
		},
		{ "onsails/lspkind.nvim" },
		{ "lukas-reineke/cmp-under-comparator" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "hrsh7th/cmp-nvim-lsp" },
		--{ "hrsh7th/cmp-nvim-lua" },
		--{ "andersevenrud/cmp-tmux" },
		---{ "hrsh7th/cmp-path" },
		--{ "f3fora/cmp-spell" },
		--{ "hrsh7th/cmp-buffer" },
		--{ "kdheepak/cmp-latex-symbols" },
		--{ "ray-x/cmp-treesitter" },
	},
}

return completion

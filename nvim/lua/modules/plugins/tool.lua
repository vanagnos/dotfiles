local tool = {}
--Git
tool["tpope/vim-fugitive"] = {
	lazy = true,
	cmd = { "Git", "G" },
}

-- tool["kdheepak/lazygit.nvim"] = {
-- 	lazy = true,
-- 	cmd = "LazyGit",
-- }
tool["theprimeagen/harpoon"] = {
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
    keys = {
      { "<leader>a", function() require("harpoon"):list():append() end, desc = "harpoon file", },
      { "<C-e>", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
      { "<C-h>", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
      { "<C-t>", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
      { "<C-n>", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
      { "<C-s>", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
    },
  }

-- Please don't remove which-key.nvim otherwise you need to set timeoutlen=300 at `lua/core/options.lua`
tool["folke/which-key.nvim"] = {
	lazy = true,
	event = "VeryLazy",
	config = require("keymaps.which-key"),
}

-- for system clipboard support
tool["ibhagwan/smartyank.nvim"] = {
	lazy = true,
	event = "BufReadPost",
	config = require("tool.smartyank"),
}

-- this is an advanced feature for me, i will maybe use it in the future
--tool["folke/trouble.nvim"] = {
--	lazy = true,
--	cmd = { "TroubleToggle", "Trouble" },
--	config = function()
--		require("trouble").setup({
--			auto_open = false,
--			auto_close = false,
--			auto_preview = false,
--		})
--	end,
--}

-- Code Runner
-- tool["is0n/jaq-nvim"] = {
-- 	lazy = true,
-- 	cmd = "Jaq",
-- 	config = function()
-- 		require("tool.jaq")
-- 	end,
-- }

--tool["gelguy/wilder.nvim"] = {
--	lazy = true,
--	event = "CmdlineEnter",
--	config = require("tool.wilder"),
--	dependencies = { "romgrk/fzy-lua-native" },
--}

-- tool["notjedi/nvim-rooter.lua"] = {
--   lazy = true,
--   event = "BufRead",
--   config = function() require 'nvim-rooter'.setup() end
-- }



----------------------------------------------------------------------
--                        FZF 
----------------------------------------------------------------------
tool["ibhagwan/fzf-lua"] = {
    config = function() require 'fzf-lua'.setup({ "fzf-vim" })

	end
}


----------------------------------------------------------------------
--                        Telescope Plugins                         --
----------------------------------------------------------------------
--tool["nvim-telescope/telescope.nvim"] = {
--	lazy = true,
--	cmd = "Telescope",
--	event = "CursorHold",
--	config = require("tool.telescope"),
--	dependencies = {
--		{ "nvim-lua/plenary.nvim" },
--		{ "nvim-lua/popup.nvim" },
--		--{
--		--	"ahmedkhalf/project.nvim",
--		--	event = "CursorHold",
--		--	config = require("tool.project"),
--		--},
--		-- { "nvim-telescope/telescope-frecency.nvim", dependencies = {
--		-- 	{ "kkharji/sqlite.lua" },
--		-- }
--	    -- },
--		 { "jvgrootveld/telescope-zoxide" },
--		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
--		{ "nvim-telescope/telescope-live-grep-args.nvim" },
--	},
--}

----------------------------------------------------------------------
--                           DAP Plugins                            --
----------------------------------------------------------------------
--tool["mfussenegger/nvim-dap"] = {
--	lazy = true,
--	cmd = {
--		"DapSetLogLevel",
--		"DapShowLog",
--		"DapContinue",
--		"DapToggleBreakpoint",
--		"DapToggleRepl",
--		"DapStepOver",
--		"DapStepInto",
--		"DapStepOut",
--		"DapTerminate",
--	},
--	dependencies = {
--		{
--			"rcarriga/nvim-dap-ui",
--			config = function()
--				require("dapui").setup()
--			end,
--		},
--	},
--}

return tool

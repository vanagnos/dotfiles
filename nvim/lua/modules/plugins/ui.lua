local ui = {}

-- ui["goolord/alpha-nvim"] = {
-- 	lazy = true,
-- 	event = "BufWinEnter",
-- 	config = require("ui.alpha"),
-- }

--ui["akinsho/bufferline.nvim"] = {
--	lazy = true,
--	event = { "BufReadPost", "BufAdd", "BufNewFile" },
--	config = require("ui.bufferline"),
--}

ui["Mofiqul/vscode.nvim"] = {
	lazy = false,

}

--ui["projekt0n/github-nvim-theme"] = {
--	lazy = false,
--}

--ui["LunarVim/Colorschemes"] = {
--	lazy = true,
--	event = "CursorHold",
--}
-- ui["catppuccin/nvim"] = {
-- 	lazy = true,
-- 	name = "catppuccin",
-- 	event = "CursorHold",
-- 	config = require("ui.catppuccin"),
-- }
-- Standalone UI for nvim-lsp progress.
--ui["j-hui/fidget.nvim"] = {
--  lazy = true,
--  event = "BufReadPost",
--  tag = "legacy",
--  config = require("ui.fidget"),
--}
-- ui["lewis6991/gitsigns.nvim"] = {
-- 	lazy = true,
-- 	event = { "BufReadPost" },
-- 	config = require("ui.gitsigns"),
-- }
-- ui["nvim-lualine/lualine.nvim"] = {
-- 	lazy = true,
-- 	event = { "BufReadPost", "BufAdd", "BufNewFile" },
-- 	config = require("ui.lualine"),
-- }

--ui["rcarriga/nvim-notify"] = {
--	lazy = true,
--	event = "VeryLazy",
--	config = require("ui.notify"),
--}

return ui

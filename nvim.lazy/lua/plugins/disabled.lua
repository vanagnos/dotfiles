return {
  -- disable trouble
  { "folke/trouble.nvim", enabled = false },
  -- session management. might need this in the future
  { "folke/persistence.nvim", enabled = false },
  { "stevearc/dressing.nvim", enabled = false },
  { "nvim-lualine/lualine.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "folke/todo-comments.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false },
  -- UI stuff. changes command mode, yikes
  { "folke/noice.nvim", enabled = false },
  { "nvim-tree/nvim-web-devicons", enabled = false },
  -- UI stuff.
  { "MunifTanjim/nui.nvim", enabled = false },
  -- startup dashboard
  { "nvimdev/dashboard-nvim", enabled = false },
  -- startup greeter. yikes
  { "goolord/alpha-nvim", enabled = false },
  -- automatically add closing tags for HTML and JSX
  { "windwp/nvim-ts-autotag", enabled = false },
  -- file tree. yikes
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "nvim-pack/nvim-spectre", enabled = false },

  -- enhances search '/' with additional keys you can press to find the particular search.
  { "folke/flash.nvim", enabled = false },
  { "lewis6991/gitsigns.nvim", enabled = false },

  --{ "hrsh7th/nvim-cmp", enabled = false },

  -- automatically close pairs of brackets, quotes etc.
  { "echasnovski/mini.surround", enabled = false },
  { "echasnovski/mini.pairs", enabled = false },
  { "echasnovski/mini.bufremove", enabled = false },

  -- for snippets. works on all languages and not only on lua.
  { "rafamadriz/friendly-snippets", enabled = false },
  { "L3MON4D3/LuaSnip", enabled = false },

  -- automatically understand language specific comments with gcc command. '//' for java , '#' for python etc.
  { "JoosepAlviste/nvim-ts-context-commentstring", enabled = false },

  { "echasnovski/mini.comment", enabled = false },
  --{ "echasnovski/mini.ai", enabled = false },
}

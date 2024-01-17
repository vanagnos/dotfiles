local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap


vim.g.mapleader = " "
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


--local builtin = require('telescope.builtin')
-- temporary solution: i have installed fzf-lua because i didn't manage to install fzf with lazy.vim plugin manager. The command :Files is still the same.
vim.keymap.set('n', '<C-p>', ':Files<cr>', { desc = 'We are using fzf instead of telescope for finding files for performance reasons' })

-- very very very useful. opens up all diagnostics (Diagnostics List) in telescope. also shows you other files in the project where there are errors
--vim.keymap.set('n', '<leader>dl', '<cmd> Telescope diagnostics<cr>')
--vim.keymap.set('n', '<leader>dl', builtin.diagnostics, { desc = '[S]earch for diagnostics' })

--vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles in current working directory, respects .gitignore' })
--vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep in your current working directory, respects .gitignore'})
--vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'List open [B]uffers in current neovim instance'})
--vim.keymap.set('n', '<leader>o', builtin.oldfiles, { desc = 'List old [B]uffers in current neovim instance'})

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
--vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- harpoon keymaps
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- vim.keymap.set("n", "<leader>h", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<leader>t", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<leader>n", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<leader>s", function() ui.nav_file(4) end)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

-- toggle trouble plugin
--vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
--  {silent = true, noremap = true}
--)


-- Navigate buffers
--keymap("n", "<TAB>", ":bnext<CR>", opts)
--keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local lspopts = { buffer = true }
      vim.keymap.set(mode, lhs, rhs, lspopts)
    end

    -- Displays hover information about the symbol under the cursor
	-- needs markdown and markdown_inline parsers in treesitter to work
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>') --'<cmd>Lspsaga hover_doc<cr>')

    -- Jump to definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')


    -- Move to the next diagnostic
    bufmap('n', 'gn','<cmd>lua vim.diagnostic.goto_next()<cr>')--'<cmd>Lspsaga diagnostic_jump_next<cr>')

    -- Move to the previous diagnostic
    bufmap('n', 'gp','<cmd>lua vim.diagnostic.goto_prev()<cr>' )--'<cmd>Lspsaga diagnostic_jump_prev<cr>')

	-- Diagnostic keymaps
	--vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
	--vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
	--vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
	--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

    -- Lists all the implementations for the symbol under the cursor
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

    -- Jumps to the type definition of the type symbol
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Lists all the references
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
    --bufmap('n', 'gr', '<cmd>Lspsaga lsp_finder<cr>')


    -- Renames all references to the symbol under the cursor
    bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Selects a code action available at the current cursor position
    bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

    -- Peek into the definition
    --bufmap('n', 'gD', --'<cmd>Lspsaga peek_definition<cr>')

    -- Displays a function's signature information
    --bufmap('n', 'L', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
  end
})

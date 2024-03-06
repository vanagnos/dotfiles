-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- local global = require("core.global")

local opt = vim.opt

opt.path = "/local/zavasan/git/5g_proto/**"
opt.mouse = "icr"
opt.guicursor = ""
--not sure if needed since i have plugins installed for this
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
--expandtab=true
--ai=true
opt.relativenumber = true
opt.scrolloff = 8
opt.autochdir = false -- same as "noacd"
opt.hidden = true
-- Set highlight on search
opt.hlsearch = true
opt.incsearch = true
opt.backup = false
opt.swapfile = false
opt.laststatus = 0
opt.number = true
--clipboard = "unnamedplus",
-- Enable break indent
opt.breakindent = true
-- Save undo history
opt.undofile = true
-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true
-- Keep signcolumn on by default
opt.signcolumn = "yes"
-- Decrease update time
-- Please do NOT set `updatetime` to above 500, otherwise most plugins may not work correctly
opt.updatetime = 300
opt.timeout = true
opt.timeoutlen = 300
-- Set completeopt to have a better completion experience
opt.completeopt = "menuone,noselect"
-- NOTE: You should make sure your terminal supports this
opt.termguicolors = true

-- NOTE: These options where the default when i installed dusk.nvim. Need to furhter check on them to decide which to keep.
opt.autoindent = true
opt.wildignore =
  ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**"

opt.autoread = true
opt.autowrite = true
opt.backspace = "indent,eol,start"
opt.backupskip = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim"
opt.linebreak = true
opt.breakat = [[\ \	:,!?]]
-- breakindentopt = "shift:2,min:20"
-- cmdheight = 1, -- 0, 1,
-- cmdwinheight = 5
-- complete = ".,w,b,k"
-- concealcursor = "niv"
-- conceallevel = 0
-- cursorcolumn = false
-- cursorline = true
-- diffopt = "filler,iwhite,internal,algorithm:patience"
-- display = "lastline"
-- encoding = "utf-8"
-- equalalways = false
-- errorbells = true
-- expandtab = true
-- fileformats = "unix,mac,dos"
-- foldenable = true
-- foldlevelstart = 99
-- formatoptions = "1jcroql"
-- grepformat = "%f:%l:%c:%m"
-- grepprg = "rg --hidden --vimgrep --smart-case --"
-- helpheight = 12
-- history = 2000
-- inccommand = "nosplit"
-- infercase = true
-- jumpoptions = "stack"
-- list = false
-- magic = true
-- mousescroll = "ver:3,hor:6"
-- previewheight = 12
-- pumheight = 15
-- redrawtime = 1500
-- ruler = true
-- sessionoptions = "curdir,help,tabpages,winsize"
-- shada = "!,'300,<50,@100,s10,h"
-- shiftround = true
-- shortmess = "aoOTIcF"
-- showbreak = "↳  "
-- showcmd = false
-- showmode = false
-- showtabline = 2
-- sidescrolloff = 5
-- smarttab = true
-- splitbelow = true
-- splitright = true
-- startofline = false
-- switchbuf = "usetab,uselast"
-- synmaxcol = 2500
-- ttimeout = true
-- ttimeoutlen = 0
-- opt.undodir = home .. path_sep .. ".cache" .. path_sep .. "nvim" .. path_sep .. "undo/"
-- viewoptions = "folds,cursor,curdir,slash,unix"
-- virtualedit = "block"
-- visualbell = true
-- whichwrap = "h,l,<,>,[,],~"
-- wildignorecase = true
-- winminwidth = 10
-- winwidth = 30
-- wrap = false
-- wrapscan = true
-- writebackup = false

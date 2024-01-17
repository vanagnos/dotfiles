local global = require("core.global")

local function load_options()
	local global_local = {
		-- [[ Setting options ]]
		-- See `:help vim.o`
		mouse="icr";
		guicursor="";
		--not sure if needed since i have plugins installed for this
		tabstop=4;
		shiftwidth=4;
		softtabstop=4;
		--expandtab=true
		--ai=true
		relativenumber = true;
		scrolloff = 8;
		autochdir='noacd';
		hidden = true;
		-- Set highlight on search
		hlsearch = true;
		incsearch = true;
		backup = false;
		swapfile = false;
		laststatus = 0;
		number = true;
		--clipboard = "unnamedplus",
		-- Enable break indent
		breakindent = true;
		-- Save undo history
		undofile = true;
		-- Case insensitive searching UNLESS /C or capital in search
		ignorecase = true;
		smartcase = true;
		-- Keep signcolumn on by default
		signcolumn = 'yes';
		-- Decrease update time
		-- Please do NOT set `updatetime` to above 500, otherwise most plugins may not work correctly
		updatetime = 300;
		timeout = true;
		timeoutlen = 300;
		-- Set completeopt to have a better completion experience
		completeopt = 'menuone,noselect';
		-- NOTE: You should make sure your terminal supports this
		termguicolors = true;


		-- NOTE: These options where the default when i installed dusk.nvim. Need to furhter check on them to decide which to keep.
		autoindent = true,
		autoread = true,
		autowrite = true,
		backspace = "indent,eol,start",
		backupskip = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim",
		linebreak = true,
		breakat = [[\ \	;:,!?]],
		-- breakindentopt = "shift:2,min:20",
		-- cmdheight = 1, -- 0, 1, 2
		-- cmdwinheight = 5,
		-- complete = ".,w,b,k",
		-- concealcursor = "niv",
		-- conceallevel = 0,
		-- cursorcolumn = false,
		-- cursorline = true,
		-- diffopt = "filler,iwhite,internal,algorithm:patience",
		-- display = "lastline",
		-- encoding = "utf-8",
		-- equalalways = false,
		-- errorbells = true,
		-- expandtab = true,
		-- fileformats = "unix,mac,dos",
		-- foldenable = true,
		-- foldlevelstart = 99,
		-- formatoptions = "1jcroql",
		-- grepformat = "%f:%l:%c:%m",
		-- grepprg = "rg --hidden --vimgrep --smart-case --",
		-- helpheight = 12,
		-- history = 2000,
		-- inccommand = "nosplit",
		-- infercase = true,
		-- jumpoptions = "stack",
		-- list = false,
		-- magic = true,
		-- mousescroll = "ver:3,hor:6",
		-- previewheight = 12,
		-- pumheight = 15,
		-- redrawtime = 1500,
		-- ruler = true,
		-- sessionoptions = "curdir,help,tabpages,winsize",
		-- shada = "!,'300,<50,@100,s10,h",
		-- shiftround = true,
		-- shortmess = "aoOTIcF",
		-- showbreak = "↳  ",
		-- showcmd = false,
		-- showmode = false,
		-- showtabline = 2,
		-- sidescrolloff = 5,
		-- smarttab = true,
		-- splitbelow = true,
		-- splitright = true,
		-- startofline = false,
		-- switchbuf = "usetab,uselast",
		-- synmaxcol = 2500,
		-- ttimeout = true,
		-- ttimeoutlen = 0,
		 undodir = global.cache_dir .. "undo/",
		-- viewoptions = "folds,cursor,curdir,slash,unix",
		-- virtualedit = "block",
		-- visualbell = true,
		-- whichwrap = "h,l,<,>,[,],~",
		 wildignore = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**",
		-- wildignorecase = true,
		-- winminwidth = 10,
		-- winwidth = 30,
		-- wrap = false,
		-- wrapscan = true,
		-- writebackup = false,
	}
	local function isempty(s)
		return s == nil or s == ""
	end

	-- custom python provider
	-- local conda_prefix = os.getenv("CONDA_PREFIX")
	-- if not isempty(conda_prefix) then
	-- 	vim.g.python_host_prog = conda_prefix .. "/bin/python"
	-- 	vim.g.python3_host_prog = conda_prefix .. "/bin/python"
	-- elseif global.is_mac then
	-- 	vim.g.python_host_prog = "/usr/bin/python"
	-- 	vim.g.python3_host_prog = "/usr/local/bin/python3"
	-- else
	-- 	vim.g.python_host_prog = "/usr/bin/python"
	-- 	vim.g.python3_host_prog = "/usr/bin/python3"
	-- end

	for name, value in pairs(global_local) do
		vim.o[name] = value
	end
		-- to append to existing path
		--vim.o.path = vim.o.path .. "/local/zavasan/git/5g_proto/**";
		vim.o.path = "/local/zavasan/git/5g_proto/**";

	-- Fix sqlite3 missing-lib issue on Windows
	-- if global.is_windows then
	-- 	-- Download the DLLs form https://www.sqlite.org/download.html
	-- 	vim.g.sqlite_clib_path = global.home .. "/Documents/sqlite-dll-win64-x64-3400100/sqlite3.dll"
	-- end
end

load_options()

syntax on 
" make cursor always be a block 
set guicursor=
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set relativenumber
set hlsearch
set ruler
set hidden
set backspace=indent,eol,start
set softtabstop=4  
set incsearch
set smartindent
set nobackup
set noswapfile
set scrolloff=8
" Used for exiting visual mode without delay
set ttimeoutlen=0


" Jump to last cursor position in the file you open
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

"Plugins here
call plug#begin()

"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim', {'tag':'0.1.0'}
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()



source $HOME/.config/nvim/plug-config/coc.vim 
highlight CocFloating ctermbg=231 "gkri    
highlight CocFloating ctermfg=247 "pio gkri1

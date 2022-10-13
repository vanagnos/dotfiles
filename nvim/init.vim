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
set laststatus=0

cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

" Jump to last cursor position in the file you open
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif


"Plugins here
call plug#begin()


"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim', {'tag':'0.1.0'}
"Plug 'neoclide/coc.nvim', {'branch':'release'}
"Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'neovim/nvim-lspconfig'
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'mfussenegger/nvim-jdtls'
"Plug 'neovim/nvim-lspconfig'

Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
call plug#end()

" remap ctrl+p to open fzf
nnoremap <C-p> :Files /home/cala/Documents/<cr>

"source $HOME/.config/nvim/plug-config/coc.vim 

highlight CocFloating ctermbg=231 "gkri
highlight CocFloating ctermfg=247 "pio gkri

set makeprg="mvn clean install"

au BufWritePost *.java silent! !ctags --languages=java -R -f ~/tags /local/zavasan/git/5g_proto &

lua local capabilities = vim.lsp.protocol.make_client_capabilities()
lua local opts = { noremap=true, silent=true }

" this one works
lua vim.api.nvim_set_keymap('n','<C-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', { silent = true })

lua require'lspconfig'.jdtls.setup{} 


"lua capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

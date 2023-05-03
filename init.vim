syntax on

set nocompatible
filetype plugin on

set number
set noerrorbells
set tabstop=4 softtabstop=4
set hlsearch
set relativenumber
set shiftwidth=4
set clipboard=unnamedplus
set expandtab
set smartindent
set nu
set linebreak
"set nowrap
"set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow
set nohlsearch
"set textwidth=80
set wildmenu
"set termwinsize=10x0
set colorcolumn=80
set mouse=a
highlight ColorColumn ctermbg=0 guibg=lightgrey

" best binding
" imap jk <ESC>
map Q <C-w>
map Y y$
autocmd BufWritePre * :%s/\s\+$//e

call plug#begin('~/.config/nvim/plugged/')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
"Plug 'tacsiazuma/easyjava.vim'
Plug 'mattn/emmet-vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/Dinduks/vim-java-get-set'
"Plug 'https://github.com/puremourning/vimspector'
"Plug 'calviken/vim-gdscript3'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/lervag/vimtex'
Plug 'https://github.com/dracula/vim'
Plug 'https://github.com/chrisbra/Colorizer'
Plug 'https://github.com/preservim/nerdcommenter'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/yajs.vim'
Plug 'uiiaoo/java-syntax.vim'
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty'

Plug 'neovim/nvim-lspconfig'

" Autocompletion

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

call plug#end()


"Appearance
colorscheme gruvbox
set background=dark

" -- Transparency --
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE


let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'

let g:vim_markdown_folding_disabled = 1

"---Running programs---

map <F9> :term compiler %<CR>
map <F8> :Goyo <CR>
map <F1> :so ~/.config/nvim/init.vim <CR>
tnoremap <Esc> <C-\><C-n>
" emmet
map <leader>e <C-y>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd FileType java map <leader>/ :%s!/\*\_.\{-}\*/!!g<Enter>
autocmd FileType c map <leader>/ :%s!/\*\_.\{-}\*/!!g<Enter>
autocmd FileType cpp map <leader>/ :%s!/\*\_.\{-}\*/!!g<Enter>
autocmd VimEnter * ColorToggle

map <leader>y :%y<Enter>

lua require('zafflen528')
"set updatetime=300

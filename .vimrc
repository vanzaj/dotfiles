set nocompatible
set wildmenu
set esckeys
set ttyfast
set gdefault
set encoding=utf-8 nobomb
let mapleader=","
set binary
set noeol
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

set number
set tw=80
set nowrap
set fo-=t " don't wrap text while typing
filetype off
filetype plugin indent on
syntax on
set cursorline
set tabstop=4
set softtabstop=4 
set shiftwidth=4 
set shiftround 
set expandtab 
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set ignorecase
set smartcase
set incsearch
set laststatus=2
set mouse=a
set backspace=2
set noerrorbells
set nostartofline
set ruler
set shortmess=atI " Don’t show the intro message when starting vim
set showmode
set notitle
set showcmd
set scrolloff=3
set clipboard=unnamed

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction

noremap <leader>ss :call StripWhitespace()<cr>

" ESC
inoremap jk <esc>
" inoremap <esc> <nop>

" BOL, EOL shortcuts
nnoremap H 0
nnoremap L $

" Moving between windows and tabs
map <c-j> <c-w>j 
map <c-k> <c-w>k 
map <c-l> <c-w>l 
map <c-h> <c-w>h

" edit and reload ~/.vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" edit and reload ~/.vimrc
nnoremap <leader>td :edit $TODO<cr>

" osx copy to clipboard
vmap <C-c> :w !pbcopy<CR><CR>

" natural move around wrapped text
nnoremap j gj
nnoremap k gk

nnoremap :b :ls<cr>:b<space>

" switch alternate files
nnoremap <Leader>a <c-^>

" toggle numbers and paste
nmap <Leader>l :setlocal number!<cr>
nmap <Leader>o :set paste!<cr>

" tab size
nmap <Leader>t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<cr>
nmap <Leader>T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<cr>
nmap <Leader>M :set noexpandtab tabstop=8 shiftwidth=8 softtabstop=4<cr>
nmap <Leader>m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<cr>

" easier moving between tabs
map <Leader>N <esc>:tabprevious<cr>
map <Leader>n <esc>:tabnext<cr>

" useful mappings
imap <c-u> <esc>viwUea

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    autocmd BufNewFile,BufRead *.yml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
endif

" colors
syntax enable
set background=light
colorscheme hemisu
set colorcolumn=80

" Setup Pathogen
call pathogen#infect()
"let g:pathogen_disabled =['python-mode', 'vim-flake8']

" ctrlp
let g:ctrlp_max_height = 30
let g:ctrlp_map = '<C-p>'
set wildignore+=*.swp,*.zip,*.pyc

set pastetoggle=<F2>
set completeopt=longest,menuone

" Settings for NERDTree
nmap <Leader>n :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.pyc$', '\.egg-info$', '^build$']

" Abbreviations
iab <expr> idtc strftime("%b %d, %Y %H:%M:%S")
iab <expr> ids strftime("%Y/%m/%d")
iab <expr> isod strftime("%FT%T%z")
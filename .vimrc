" Start pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on

"Use vim settings
set nocompatible	

" Indentation stuff
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Use system clipboard
set clipboard=unnamed

" Stop making noise!!!
set noerrorbells

" Allow copying outside vim
set mouse=a

" Highlight search
set hlsearch

" Show command being run
set showcmd

" Turn on ruler/status line at bottom of vim windows
set laststatus=2
set statusline=%<%1*%-16.64f%1*%m%1*%r%1*%=%-3(%1*%.3b%)\ 0x%-3.3B%1*%6.6l,%-4.4c%-6.12o%06(%1*%-p%%%)
set cmdheight=1
set ruler

" Set backspace to delete like most other applications (end of lines etc etc)
set backspace=2

" Set the title of the vim window
set title
set titlestring=%t\ \(%{expand(\"%:p:h:t\")}\)

" Turn on incremental search
set incsearch

" Turn on case insensitive search
set ignorecase

" Turn on syntax highlighting
syn on

" Set file encodings correctly
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

" Set no wrap and what happens when a line runs off the screen
set sidescroll=5
set sidescrolloff=5
set listchars+=precedes:«,extends:»
set nowrap

" allow backspacing over everything in insert mode
set bs=2		

" always set autoindenting on
set autoindent
set smartindent

" Remember last position
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" keep 100 lines of command line history
set history=100		

" show the cursor position all the time
set ruler		

if &term=="screen-256color"
     set t_Co=256
endif

vmap < <gv
vmap > >gv

" Remap F1 -> ESC key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


set tags=tags;/

" Start Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Nerdtree map
map <C-d> :NERDTreeToggle<CR>

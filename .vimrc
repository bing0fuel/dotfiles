" Set nocompatible just in case
set nocompatible

" Start pathogen
execute pathogen#infect()

" Enable syntax
syntax on
filetype plugin indent on

" Basic settings
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set expandtab     " Use spaces instead of tabs when <Tab> pressec
set nonumber      " Do not have line numbers

set modelines=1    " Enable modelines

" No more backup/swp files!
set nobackup
set noswapfile

" Use F12 to do no-smarty paste
set pastetoggle=<F2>

" Use system clipboard
set clipboard=unnamed

" Stop making noise!!!
set visualbell
set noerrorbells

" Allow mouse 
set mouse=a

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

" Turn on case insensitive search

" Turn on syntax highlighting
syn on

" Set file encodings correctly
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

" Set list-chars to show ugly whitespace related things
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Set no wrap and what happens when a line runs off the screen
set sidescroll=5
set sidescrolloff=5
set listchars+=precedes:«,extends:»

" Remember last position
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Super history and undo
set history=1000
set undolevels=1000

" Ignore these things
set wildignore=*.swp,*.bak,*.pyc

" Show the cursor position all the time
set ruler

" Set colors for colorful terminal
if &term=="screen-256color"
     set t_Co=256
endif

" Remap F1 -> ESC key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Start Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Nerdtree map
map <C-d> :NERDTreeToggle<CR>

" Misc
set tags=tags;/
vmap < <gv
vmap > >gv

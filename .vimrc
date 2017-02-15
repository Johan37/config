"""""""""""
" General 
"""""""""""

" Sets how many lines of history VIM has to remember
set history=100

" Set number of undolevels 
set undolevels=100

" Make vim copy to System clipboard
set clipboard=unnamed

" Set path variable
let &path="../src,../inc,../export,inc,src,export,"

" For regular expressions turn magic on
set magic

""""""""""""""""""""""
" VIM user interface
""""""""""""""""""""""

" Always show current position
set ruler

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell

" Enable mouse support
set mouse=a
"set ttymouse=sgr

""""""""""""""""""""""
" Status bar
""""""""""""""""""""""

" Always show status bar
set laststatus=2

" Turn on Wild menu
set wildmode=longest:full
set wildmenu

"""""""""""""""""""""""
" Search
"""""""""""""""""""""""

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

"""""""""""""""""""""""
" Line numbers
"""""""""""""""""""""""

" Show relative line numbers by default
set relativenumber

" Toggle relative line numbers with Ctrl + x
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-x> :call NumberToggle()<cr>

" Don't use relative line numbers in insert mode
autocmd InsertEnter * : set norelativenumber | set number
autocmd InsertLeave * : set relativenumber

"""""""""""""""""""""
" Files and Backup
"""""""""""""""""""""

" Create no swap-files
set noswapfile

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Set to auto read when a file is changed from the outside
set autoread

"""""""""""""
" Color scheme
"""""""""""""

syntax on
"set background=dark
colorscheme badwolf

set encoding=utf-8

"""""""""""""""""""""""""""""""""
" Text, tabs and indent related
"""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

""""""""""
" Keys
""""""""""

" Make Enter behave properly
nmap <S-ENTER> O<ESC>
nmap <CR> o<ESC>			

" Make backspace behave properly
set backspace=2

" Y to yank to eol, the missing vim command
nmap Y y$

""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""

" Enable file plugin
filetype plugin indent on

" Enable Pathogen
execute pathogen#infect()

" NERDTree
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrows = 0
" let g:NERDTreeDirArrowExpandable = 'a'
" let g:NERDTreeDirArrowCollapsible = '-'


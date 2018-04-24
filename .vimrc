"""""""""""
" General
"""""""""""

" Source system spcific config
if filereadable(expand("~/.vimrc_host.vim"))
    source ~/.vimrc_host.vim
endif

" Move vim into the new millenium
set nocompatible

" Make vim copy to System clipboard
set clipboard=unnamedplus

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

" Make backspace behave like normal programs
set backspace=indent,eol,start

" Show line lenght column
set colorcolumn=100

""""""""""""""""""""""
" Status bar
""""""""""""""""""""""

" Always show status bar
set laststatus=2

" Turn on Wild menu
set wildmode=longest:full
set wildmenu

" Git branch on status line
"set statusline=%<%f\    " Filename
"set statusline+=%w%h%m%r " Options
"set statusline+=%{fugitive#statusline()} "  Git Hotness
"set statusline+=\ [%{&ff}/%Y]            " filetype
"set statusline+=\ [%{getcwd()}]          " current dir
"set statusline+=%#warningmsg#
"set statusline+=%*
"set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

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

" Set path variable
set path+=**

"""""""""""""""""""""""
" Line numbers
"""""""""""""""""""""""

set number

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

" Basic color setup
set encoding=utf-8
set t_Co=256

" Enable syntax
syntax on

" Decent built in color scheme
colorscheme delek

"""""""""""""""""""""""""""""""""
" Text, tabs and indent related
"""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Enable folding
set foldmethod=syntax

""""""""""
" Keys
""""""""""

" Make Enter behave properly
nmap <S-ENTER> O<ESC>
nmap <CR> o<ESC>

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
" Commands
""""""""""""""""""""""""""""""

" Shortcut to make tags
command! MakeTags !ctags -R .

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

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

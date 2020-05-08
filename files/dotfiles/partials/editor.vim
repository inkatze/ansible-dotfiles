" Editor behavior
set autoread
set autowrite
set directory-=. " Wherever but here
set encoding=utf8 " UTF-8 default enconding
set expandtab " Tabs are the devil's work
set fileformats=unix,dos,mac " Prefer Unix
set hidden
set history=200
set nobackup " No backup after editing
set nowritebackup " No backups made while editing
set printoptions=paper:letter
set scroll=4 " Number of lines to scroll with ^U ^D
set softtabstop=4 " Makes you think that your spaces are tabs
set shortmess+=A " Ignore swamp files
set tabstop=4 " The all powerfull tab number
set formatoptions+=j " Smarter line joins
set completeopt+=noselect
set noshowmode

" Cosmetics
set laststatus=2 " Always show the status bar
set linebreak " Break lines by word, not by char
silent! set mouse=nvc " You can use the mouse, but not in insert mode
set number " Show line numbers
set ruler " Show row and col percentage
set scrolloff=15 " Kind of a cursor margin
set shiftround " Inteligent indent. roud the spaces of the shift width
set showbreak=↲ " Show me where you broke my lines
set showmatch " Highlight matching parentesis, braces, etc.
set sidescrolloff=3 " Side margins

" Search
set hlsearch " Highlight search
set ignorecase " Case insensitive
set incsearch " Search as you type
set infercase
set smartcase
set suffixes+=.pyc " Ignore these extensions when autocompleting files
set wildmenu " Show me possible completitions in command line
set wildmode=list:longest,full " Show me ALL posible completitions
set wildignore=*.class,*.o,*~,*.pyc,.git,node_modules " Ok, not all

" Indentation
filetype plugin indent on
set backspace=indent,eol,start

" Encoding
scriptencoding utf-8

" Autofold and manual fold at the same time
set foldmarker=->>,<<-
set foldlevel=99
augroup vimrc
  au BufReadPre * setlocal foldmethod=syntax
  au BufRead * if &fdm == 'syntax' | setlocal foldmethod=marker | endif
augroup END

" http://stackoverflow.com/questions/1005/getting-root-permissions-on-a-file-inside-of-vi
cmap w!! w !sudo tee >/dev/null %

" trim spaces at EOL
command! TEOL %s/ \+$//

set nocompatible
filetype on
filetype off

" Vundle plugin manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins
Bundle 'gmarik/vundle'      
Bundle 'jnurmine/Zenburn'
Bundle 'jnwhiteh/vim-golang'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'

filetype plugin indent on
syntax on

" Color scheme
let g:zenburn_high_contrast=1
colorscheme zenburn

" Search 
set incsearch 
set hlsearch

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

" Indentation 
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
 
" Line numbers
set nu
set numberwidth=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey gui=NONE guifg=236 guibg=NONE

" Status line
set laststatus=2
set statusline=
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=[%{strlen(&fenc)?&fenc:'none'},  "file encoding
set statusline +=%*0x%04B\]         "character under cursor

" Close the scratch buffer
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Set the notes directory
let g:notes_directories = ['~/dev/notes']
let g:notes_suffix = '.txt'

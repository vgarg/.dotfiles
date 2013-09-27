" Color scheme
let g:zenburn_high_contrast=1
colorscheme zenburn

" Golang plugin
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

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

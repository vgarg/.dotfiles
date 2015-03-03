set nocompatible
filetype on
filetype off

" Vundle plugin manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins
Bundle 'gmarik/vundle'
Bundle 'jnurmine/Zenburn'
Bundle 'altercation/vim-colors-solarized'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'

" golang support
Bundle 'fatih/vim-go'

" Auto Complete YCM
Bundle 'Valloric/YouCompleteMe'
Bundle 'rking/ag.vim'

" snippets
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

" Git plugin
Bundle "tpope/vim-fugitive"

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
set number
set numberwidth=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey gui=NONE guifg=236 guibg=NONE

" Status line
set laststatus=2

" Close the scratch buffer
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Set the notes directory
let g:notes_directories = ['~/dev/notes']
let g:notes_suffix = '.txt'
let g:notes_tab_indents = 0

" snipmate settings
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" vim-go settings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1


" Use Vim settings rather than Vi settings
" This must be first, because it changes other options as a side effect
set nocompatible

" Color Scheme
colorscheme peachpuff 

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Use UTF-8
set encoding=utf-8
set fileencoding=utf-8

" Clipboard settings
set clipboard=unnamed

" Syntax highlighting
syntax on

" Indentations
filetype plugin indent on
set autoindent
set cindent
set smartindent

" Default tabbing and spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Indentations by file type
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" Display color bar at a specific column
"set colorcolumn=80

" Display line numbers
set number
set relativenumber

" XML formatting
map <Leader>xml :set filetype=xml<CR>:syntax enable<CR>:%!tidy -mi -xml -q -utf8 -w 1000<CR>1G=G

" JSON formatting
map <Leader>json :set filetype=json<CR>:syntax enable<CR>:%!python -m json.tool<CR>

" Remap some keys
" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


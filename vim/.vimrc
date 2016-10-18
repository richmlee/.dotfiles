" Use Vim settings rather than Vi settings
" This must be first, because it changes other options as a side effect
set nocompatible
filetype off

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

" Indentations by file type
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

" Tabbing and spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Display color bar at a specific column
set colorcolumn=120

" Display line numbers
set number

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


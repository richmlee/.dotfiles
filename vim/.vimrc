" Use Vim settings rather than Vi settings
" This must be first, because it changes other options as a side effect
set nocompatible

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

" Tabbing and spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Display color bar at a specific column
set colorcolumn=120

" Display line numbers
set number

" XML Formatting
map <Leader>xml :set filetype=xml<CR>:syntax enable<CR>:%!tidy -mi -xml -q -utf8 -w 1000<CR>1G=G

" JSON Formatting
map <Leader>json :set filetype=json<CR>:syntax enable<CR>:%!python -m json.tool<CR>

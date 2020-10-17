set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'dense-analysis/ale'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Color Scheme
colorscheme evening 

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
"set relativenumber

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


syntax on
set number

set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start

"XML Formatting
map <Leader>xml :set filetype=xml<CR>:syntax enable<CR>:%!tidy -mi -xml -q -utf8 -w 1000<CR>1G=G

"JSON Formatting
map <Leader>json :set filetype=json<CR>:syntax enable<CR>:%!python -m json.tool<CR>

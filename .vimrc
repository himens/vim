" command! MakeTags !ctags -R .
filetype plugin indent on
syntax on 
colorscheme elflord

set smartindent
set autoindent
set expandtab
set number
set shiftwidth=2
set backspace=indent,eol,start
set hidden
"set hlsearch
set incsearch
set showmatch
set showmode
set modeline
set laststatus=2
set path=.,,**
set wildmenu
set mouse=a
set scrolloff=8
set signcolumn=yes
set colorcolumn=120

highlight TabLine ctermfg=255 ctermbg=238 cterm=NONE
highlight TabLineSel ctermfg=17 ctermbg=190 cterm=NONE
highlight TabLineFill ctermfg=255 ctermbg=238 cterm=NONE

autocmd BufWritePost *.c,*.cpp,*.h silent! !ctags -R &
autocmd BufRead,BufNewFile *.py syntax on
autocmd BufRead,BufNewFile *.py set ai
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd FileType python setl autoindent tabstop=4 expandtab shiftwidth=4 softtabstop=4

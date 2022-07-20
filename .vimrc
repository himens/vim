" Generic config
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

" Tab style
highlight TabLine ctermfg=255 ctermbg=238 cterm=NONE
highlight TabLineSel ctermfg=17 ctermbg=190 cterm=NONE
highlight TabLineFill ctermfg=255 ctermbg=238 cterm=NONE

" Autocmd
autocmd BufWritePost *.c,*.cpp,*.h silent! !ctags -R &
autocmd BufRead,BufNewFile *.py syntax on
autocmd BufRead,BufNewFile *.py set ai
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd FileType python setl autoindent tabstop=4 expandtab shiftwidth=4 softtabstop=4

" Search highlight 
nnoremap <silent> n n:call SearchHlt(0.2)<cr>
nnoremap <silent> N N:call SearchHlt(0.2)<cr>

function! SearchHlt (blinktime)
  let target_pat = '\c\%#'.@/
  let ring = matchadd('ErrorMsg', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction


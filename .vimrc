let OSTYPE = system('uname')
if OSTYPE == "Darwin\n"
  :set term=xterm-256color
  :syntax on
endif

set number
set nottitle
set ambiwidth=double
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set history=50
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu

autocmd BufWritePre * :%s/\s\+$//ge

" colored vimdiff
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21

" 都度変える必要あり
" set paste
" set noautoindent

" auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

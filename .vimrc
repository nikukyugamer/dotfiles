set number
set title
set tabstop=2
set expandtab
set list
set smartindent
set ambiwidth=double
set shiftwidth=2
set smartindent
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set history=50
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu

let OSTYPE = system('uname')
if OSTYPE == "Darwin\n"
  :set term=xterm-256color
  :syntax on
endif

autocmd BufWritePre * :%s/\s\+$//ge


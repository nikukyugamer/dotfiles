set ambiwidth=double
set autoindent
set backspace=indent,eol,start
" https://pocke.hatenablog.com/entry/2014/10/26/145646
set clipboard&
set clipboard^=unnamedplus
set encoding=utf-8
set expandtab
set fileformats=unix,dos,mac
set history=50
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set nofixeol
" set noautoindent
set notitle
set nrformats-=octal
set number
" set paste
set shiftwidth=2
set smartindent
set softtabstop=2
set tabstop=2
set whichwrap=b,s,[,],<,>
set wildmenu

autocmd BufWritePre * :%s/\s\+$//ge

" colored vimdiff
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21

" auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

" Neovim を使う場合には以下のコマンドを実行して設定ファイルを有効にすること
" $ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim
source ~/dotfiles/.vimrc

" $ mkdir -p ~/.config/nvim/colors
" vim ~/.config/nvim/colors/molokai.vim <- https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim の内容をコピペする
" vim ~/.config/nvim/colors/tender.vim <- https://raw.githubusercontent.com/jacoborus/tender.vim/master/colors/tender.vim の内容をコピペする
" colorscheme tender
" colorscheme molokai " こちらの使用を推奨

" Karabiner-Elements を使用している場合に、
" Home が Ctrl + A 、End が Ctrl + E に割り当てられている場合に、
" Home と End を「行頭移動」「行末移動」にマッピングする
" ノーマルモード
" nnoremap <C-a> ^
" nnoremap <C-e> $
" 挿入モード
" inoremap <C-a> <C-o>^
" inoremap <C-e> <C-o>$

#!/usr/bin/env bash
set -euxo pipefail

# 公式リポジトリ
# https://github.com/junegunn/vim-plug

# Neovim（今のところ、Neovim を使う前提としている）
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Vim
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'インストールをした後は Neovim を起動し、":PlugInstall" を実行して下さい。'

exit 0

#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

sudo apt install -y neovim

echo
echo "Neovim のインストールが完了しました。"
echo "やること"
echo "$HOME/.config/nvim/init.vim にエイリアスを作ること"
echo "$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim"

exit 0

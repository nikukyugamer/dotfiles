#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

sudo apt install -y neovim

echo
echo "やること その1"
echo "$HOME/.config/nvim/init.vim にエイリアスを作ること"
echo "$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim"

echo
echo "やること その2"
echo ".zshrc.userown.zshrc などにエイリアスを作ること"
echo 'echo "alias vim=/usr/bin/nvim" >> ~/.zshrc.userown.zshrc'

exit 0

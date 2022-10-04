#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

sudo apt install -y neovim

echo
echo "やること その1"
echo "~/.config/nvim にエイリアスを作ること"
echo "$ ln -s ~/.vimrc ~/.config/nvim"

echo
echo "やること その2"
echo ".zshrc にエイリアスを作ること"
echo "alias vim=/usr/bin/nvim"

exit 0

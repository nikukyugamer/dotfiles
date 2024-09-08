#!/usr/bin/env bash
set -euxo pipefail

cp .zshrc.to_home_directory.zshrc "$HOME"/.zshrc

# 以下はカスタマイズ前提のファイル群なので、既存のファイルがあった場合に上書きしないように一時的な名前でコピーする
cp ../settings/.zshrc.userown.zshrc "$HOME"/.zshrc.userown.zshrc.default
cp ../settings/.vimrc.should_cp_to_home_directory.vimrc "$HOME"/.vimrc.default
cp ../settings/.gitconfig.should_cp_to_home_directory.gitconfig "$HOME"/.gitconfig.default

exit 0

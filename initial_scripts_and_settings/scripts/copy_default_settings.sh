#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

cp .zshrc.to_home_directory.zshrc "$HOME"/.zshrc

# 以下はカスタマイズ前提のファイル群なので、既存のファイルがあった場合に上書きしないように一時的な名前でコピーする
cp "$HOME"/dotfiles/.zshenv "$HOME"/.zshenv.default
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.zshrc.userown.zshrc "$HOME"/.zshrc.userown.zshrc.default
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.vimrc.should_cp_to_home_directory.vimrc "$HOME"/.vimrc.default
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.gitconfig.should_cp_to_home_directory.gitconfig "$HOME"/.gitconfig.default

exit 0

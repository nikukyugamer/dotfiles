#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# 既存のファイルがあった場合に上書きしないように一時的な名前でコピーする
# したがって、適用させるためにはファイル名を変更する必要がある
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.zshrc.to_home_directory.zshrc "$HOME"/.zshrc.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.zshenv.to_home_directory.zshenv "$HOME"/.zshenv.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.zprofile.to_home_directory.zprofile "$HOME"/.zprofile.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.vimrc.should_cp_to_home_directory.vimrc "$HOME"/.vimrc.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.gitconfig.should_cp_to_home_directory.gitconfig "$HOME"/.gitconfig.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.rdbgrc "$HOME"/.rdbgrc.from_dotfiles

# 安全のために追記にしているので重複行は手動で適宜削除する
mkdir -p "$HOME"/.config/git
cat "$HOME"/dotfiles/initial_scripts_and_settings/settings/.gitignore.my.gitignore >> "$HOME"/.config/git/ignore.from_dotfiles

## githooks
mkdir -p "$HOME"/.githooks
cp -R "$HOME"/dotfiles/initial_scripts_and_settings/settings/githooks/* "$HOME"/.githooks.from_dotfiles

# Starship
mkdir -p "$HOME"/.config
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/starship.toml "$HOME"/.config/starship.toml.from_dotfiles

## Yazi
mkdir -p "$HOME"/.config/yazi
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/yazi/theme.toml "$HOME"/.config/yazi/theme.toml.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/yazi/yazi.toml "$HOME"/.config/yazi/yazi.toml.from_dotfiles

echo "####################################################################"
echo "設定ファイルのコピー結果は以下のとおりです。"
echo "$HOME 配下の \".from_dotfiles\" ファイル。"
echo "$HOME/.config/git/ignore.from_dotfiles ファイル"
echo "$HOME/.githooks.from_dotfiles ディレクトリ"
echo "$HOME/.config/starship.toml.from_dotfiles ファイル"
echo "$HOME/.config/yazi/ 配下の \"theme.toml.from_dotfiles\" ファイル"
echo "####################################################################"

exit 0

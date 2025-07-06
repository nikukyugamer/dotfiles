#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# 既存のファイルがあった場合に上書きしないように一時的な名前でコピーする
# したがって、適用させるためにはファイル名を変更する必要がある
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.zshrc.to_home_directory.zshrc "$HOME"/.zshrc.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.zshenv.to_home_directory.zshenv "$HOME"/.zshenv.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.vimrc.should_cp_to_home_directory.vimrc "$HOME"/.vimrc.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.gitconfig.should_cp_to_home_directory.gitconfig "$HOME"/.gitconfig.from_dotfiles
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/.rdbgrc "$HOME"/.rdbgrc.from_dotfiles

# 安全のために追記にしているので重複行は手動で適宜削除する
cat "$HOME"/dotfiles/initial_scripts_and_settings/settings/.gitignore.my.gitignore >> "$HOME"/.config/git/ignore

# 以下のロジックは関数化したいがまだちょっと早い気がしているので、コピペしている

## peco
user_input_value=""
read -r -p "peco の設定ファイル (~/.config/peco) を上書きしてもいいですか？ (y/n): " user_input_value
case $user_input_value in
    [Yy]*)
        mkdir -p "$HOME"/.config/peco
        cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/config_peco_config.json "$HOME"/.config/peco/config.json
        echo "上書きしました。"
        ;;
    *)
        echo "スキップしました。"
        ;;
esac

## githooks
user_input_value=""
read -r -p "githooks の設定ファイル (~/.githooks) を上書きしてもいいですか？ (y/n): " user_input_value
case $user_input_value in
    [Yy]*)
        mkdir -p "$HOME"/.githooks
        cp -R "$HOME"/dotfiles/initial_scripts_and_settings/settings/githooks/* "$HOME"/.githooks
        echo "上書きしました。"
        ;;
    *)
        echo "スキップしました。"
        ;;
esac

## Starship
user_input_value=""
read -r -p "Starship の設定ファイル (~/.config/starship.toml) を上書きしてもいいですか？ (y/n): " user_input_value
case $user_input_value in
    [Yy]*)
        mkdir -p "$HOME"/.config
        cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/starship.toml "$HOME"/.config/starship.toml
        echo "上書きしました。"
        ;;
    *)
        echo "スキップしました。"
        ;;
esac

## Yazi
user_input_value=""
read -r -p "Yazi の設定ファイル (~/.config/yazi/*.toml) を上書きしてもいいですか？ (y/n): " user_input_value
case $user_input_value in
    [Yy]*)
        mkdir -p "$HOME"/.config/yazi
        cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/yazi/theme.toml "$HOME"/.config/yazi/theme.toml
        cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/yazi/yazi.toml "$HOME"/.config/yazi/yazi.toml
        echo "上書きしました。"
        ;;
    *)
        echo "スキップしました。"
        ;;
esac

exit 0

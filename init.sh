#!/usr/bin/env bash
set -exu -o pipefail
# -e: コマンドが失敗（非ゼロ終了ステータス）した時に即座にスクリプトを終了する
# -x: 実行する各コマンドを表示する（デバッグ用）
# -u: 未定義の変数を使用した場合にエラーとしてスクリプトを終了する
# -o pipefail: パイプライン中で最初に失敗したコマンドの終了ステータスを返す

original_dir="$(pwd)"
trap 'cd "$original_dir"' EXIT

# $0: コマンドを実行した際のシェルスクリプトのパス（入力値そのまま）
# dirname "$0": $0 からファイル名を除いたディレクトリ部分を取り出す
# "$(dirname "$0")": その結果をクォートして、空白や特殊文字に対応
# ex. $ /path/to/foobar.sh hoge fuga
# => $0: "/path/to/foobar.sh", dirname "$0": "/path/to"
# つまり以下のコマンドはこのスクリプト自身が存在するディレクトリに移動するためのコマンドになる
# cd "$(dirname "$0")"

# ここに書く

# 判断基準はとりあえず ~/.rbenv の存否とする
if [ -d "$HOME"/.rbenv ]; then
    echo "すでにinitが実行されています。"
    exit 1
fi

# 契約直後に実行すること
~/dotfiles/initial_scripts_and_settings/scripts/copy_settings/copy_setting_files.sh
~/dotfiles/initial_scripts_and_settings/scripts/version_managers/install_rbenv_goenv_phpenv.sh
~/dotfiles/initial_scripts_and_settings/scripts/version_managers/install_fvm.sh
~/dotfiles/initial_scripts_and_settings/scripts/cli_installers/install_rust.sh
~/dotfiles/initial_scripts_and_settings/scripts/cli_installers/install_pnpm.sh

# 実行時のディレクトリに戻る
cd "$original_dir"
exit 0

#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# 実行するスクリプト内に相対パス指定の部分があるため、カレントディレクトリを変更する
cd ~/dotfiles

~/dotfiles/all_update_and_upgrade_without_golang.sh
~/dotfiles/install_and_upgrade_packages_of_golang.sh

exit 0

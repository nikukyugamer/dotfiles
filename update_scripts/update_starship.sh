#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# インストール時と同じスクリプトを実行すればアップデートできる
# sudo が必要になる
"$HOME"/dotfiles/initial_scripts_and_settings/scripts/install_starship.sh

exit 0

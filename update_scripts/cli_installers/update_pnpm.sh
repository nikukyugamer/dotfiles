#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# インストール時と同じスクリプトを実行すればアップデートできる
"$HOME"/dotfiles/initial_scripts_and_settings/scripts/cli_installers/install_pnpm.sh

exit 0

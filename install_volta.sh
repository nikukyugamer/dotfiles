#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

curl https://get.volta.sh | bash

exit 0

# コマンドラインの補完機能は次の手順を踏んでインストールする
# $ volta completions zsh -o _volta
# $ sudo mv _volta /usr/local/share/zsh/site-functions

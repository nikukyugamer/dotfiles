#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# NOTE: Java のバージョン依存が激しい…
# https://docs.digdag.io/getting_started.html
mkdir -p ~/.digdag
curl -o ~/.digdag/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest"
chmod +x ~/.digdag/digdag

echo 'シェルの設定ファイルに "export PATH=$HOME/.digdag:$PATH" を追加してください。'

exit 0

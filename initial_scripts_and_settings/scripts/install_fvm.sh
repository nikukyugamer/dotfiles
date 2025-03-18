#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# macOS だと /usr/local/bin/fvm にシンボリックリンクを入れようとして sudo が必要になる
# なので、面倒だから Homebrew で入れた方が良い（公式ドキュメント参照）

# https://fvm.app/documentation/getting-started/installation
curl -fsSL https://fvm.app/install.sh | bash

exit 0

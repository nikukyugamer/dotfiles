#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# pnpm のインストール
echo
echo "pnpm のインストールを開始します..."
curl -fsSL https://get.pnpm.io/install.sh | sh -
echo "pnpm のインストールが完了しました。"
echo

exit 0

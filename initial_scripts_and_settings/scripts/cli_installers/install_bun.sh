#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# Bun のインストール
echo
echo "Bun のインストールを開始します..."
curl -fsSL https://bun.sh/install | bash
echo "Bun のインストールが完了しました。"
echo

exit 0

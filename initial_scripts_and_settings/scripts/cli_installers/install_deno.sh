#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# Deno のインストール
echo
echo "Deno のインストールを開始します..."
curl -fsSL https://deno.land/install.sh | sh
echo "Deno のインストールが完了しました。"
echo

exit 0

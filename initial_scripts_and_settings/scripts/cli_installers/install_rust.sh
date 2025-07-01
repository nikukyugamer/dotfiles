#!/usr/bin/env bash
set -xe
cd "$(dirname "$0")"

# Rust のインストール
echo
echo "Rust のインストールを開始します..."
curl https://sh.rustup.rs -sSf | sh
echo "Rust のインストールが完了しました。"
echo

exit 0

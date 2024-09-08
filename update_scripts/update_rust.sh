#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

echo '現在の rustc のバージョン:'
rustc --version

echo "Rust をアップデートします。"
rustup update stable

exit 0

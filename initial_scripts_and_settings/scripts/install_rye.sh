#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# https://rye.astral.sh/guide/installation/

# 実行するたびに最新版がインストールされる
curl -sSf https://rye.astral.sh/get | RYE_INSTALL_OPTION="--yes" bash

exit 0

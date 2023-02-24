#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# https://github.com/hadolint/hadolint/releases
DOWNLOAD_URL="https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64"
TEMPORARY_DOWNLOAD_FILEPATH="/tmp/hadolint"

wget -O "$TEMPORARY_DOWNLOAD_FILEPATH" "$DOWNLOAD_URL"
chmod +x "$TEMPORARY_DOWNLOAD_FILEPATH"
mv "$TEMPORARY_DOWNLOAD_FILEPATH" $HOME/bin

# 動作確認
$HOME/bin/hadolint --version

exit 0

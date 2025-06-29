#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

curl https://dl.min.io/client/mc/release/linux-arm64/mc -o "$HOME"/bin/mc
chmod +x "$HOME"/bin/mc

exit 0

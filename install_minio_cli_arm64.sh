#!/usr/bin/env bash
set -e

curl https://dl.min.io/client/mc/release/linux-arm64/mc -o $HOME/bin/mc
chmod +x $HOME/bin/mc

exit 0

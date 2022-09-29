#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# https://docs.flutter.dev/get-started/install/linux#additional-linux-requirements
sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev

exit 0

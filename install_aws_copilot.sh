#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# https://github.com/aws/copilot-cli/

# macOS
# brew install aws/tap/copilot-cli

# x64
curl -Lo $HOME/bin/copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux
chmod +x $HOME/bin/copilot

# arm64
# curl -Lo $HOME/bin/copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux-arm64
# chmod +x $HOME/bin/copilot

exit 0

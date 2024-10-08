#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# Docker TUI (https://github.com/moncho/dry)
curl -sSf https://moncho.github.io/dry/dryup.sh | sudo sh
sudo chmod 755 /usr/local/bin/dry

exit 0

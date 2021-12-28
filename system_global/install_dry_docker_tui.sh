#!/bin/bash
set -euxo pipefail
cd "$(dirname "$0")"

curl -sSf https://moncho.github.io/dry/dryup.sh | sudo sh
sudo chmod 755 /usr/local/bin/dry

exit 0


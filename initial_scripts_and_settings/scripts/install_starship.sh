#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# sudo が必要になる
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

exit 0

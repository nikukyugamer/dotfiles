#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

curl -fsSL https://get.pnpm.io/install.sh | sh -

exit 0

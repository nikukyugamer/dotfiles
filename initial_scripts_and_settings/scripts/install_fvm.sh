#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# https://fvm.app/documentation/getting-started/installation
curl -fsSL https://fvm.app/install.sh | bash

exit 0

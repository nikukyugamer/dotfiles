#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

curl -fsSL https://bun.sh/install | bash

exit 0

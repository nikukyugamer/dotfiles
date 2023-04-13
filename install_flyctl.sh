#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# https://fly.io/docs/hands-on/install-flyctl/
curl -L https://fly.io/install.sh | sh

exit 0

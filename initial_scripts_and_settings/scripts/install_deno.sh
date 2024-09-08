#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

curl -fsSL https://deno.land/install.sh | sh

exit 0

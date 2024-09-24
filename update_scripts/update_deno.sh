#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

deno upgrade

exit 0

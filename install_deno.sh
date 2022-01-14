#!/bin/bash
set -euxo pipefail
cd "$(dirname "$0")"

curl -fsSL https://deno.land/install.sh | sh

exit 0

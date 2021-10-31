#!/bin/bash
set -euxo pipefail
cd "$(dirname "$0")"

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

exit 0


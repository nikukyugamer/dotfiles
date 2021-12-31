#!/bin/bash
set -euxo pipefail
cd "$(dirname "$0")"

curl https://get.volta.sh | bash

exit 0


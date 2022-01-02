#!/bin/bash
set -euxo pipefail
cd "$(dirname "$0")"

sudo curl -o /usr/local/bin/googler https://raw.githubusercontent.com/jarun/googler/v4.3.2/googler && sudo chmod +x /usr/local/bin/googler

exit 0


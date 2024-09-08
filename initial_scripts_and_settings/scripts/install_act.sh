#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# https://github.com/nektos/act
# Run your GitHub Actions locally! Why would you want to do this? Two reasons:
mkdir -p $HOME/bin
cd $HOME

curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash

exit 0

#!/usr/bin/env bash
set -xe
cd "$(dirname "$0")"

# Ubuntu
curl https://cli-assets.heroku.com/install.sh | sh

# MacOS
# $ brew tap heroku/brew && brew install heroku && heroku autocomplete

exit 0

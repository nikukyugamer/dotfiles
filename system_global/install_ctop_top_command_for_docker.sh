#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update
sudo apt install -y docker-ctop

exit 0

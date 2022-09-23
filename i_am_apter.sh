#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

sudo apt update -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

exit 0

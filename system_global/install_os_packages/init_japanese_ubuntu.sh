#!/usr/bin/env bash

set -euxo pipefail
cd "$(dirname "$0")"

sudo apt install -y language-pack-ja language-pack-ja-base manpages-ja manpages-ja-dev
sudo update-locale LANG=ja_JP.UTF-8
# WSL2 だとエラーが出る
# sudo timedatectl set-timezone Asia/Tokyo

exit 0

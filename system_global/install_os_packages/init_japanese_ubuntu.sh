#!/usr/bin/env bash

set -euxo pipefail
cd "$(dirname "$0")"

sudo update-locale LANG=ja_JP.UTF-8
sudo timedatectl set-timezone Asia/Tokyo
sudo apt install -y language-pack-ja language-pack-ja-base manpages-ja manpages-ja-dev

exit 0

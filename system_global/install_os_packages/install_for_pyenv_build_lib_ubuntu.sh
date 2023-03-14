#!/usr/bin/env bash
set -xe

# https://github.com/pyenv/pyenv/wiki
sudo apt-get update; sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# For Rust?
sudo apt-get install clang -y

exit 0

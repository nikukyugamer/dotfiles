#!/usr/bin/env bash
set -xe
cd "$(dirname "$0")"

curl https://sh.rustup.rs -sSf | sh

exit 0

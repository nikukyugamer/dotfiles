#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# https://github.com/junegunn/fzf

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

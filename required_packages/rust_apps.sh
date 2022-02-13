#!/bin/bash

# cargo-update
# https://github.com/nabijaczleweli/cargo-update/issues/63
sudo apt install -y build-essential clang cmake git libssl-dev pkg-config

# ripgrep_all
# https://github.com/phiresky/ripgrep-all#debian-based
# sudo apt install -y ripgrep pandoc poppler-utils ffmpeg

# Silicon
# https://github.com/Aloxaf/silicon
sudo apt install -y expat
sudo apt install -y libxml2-dev
sudo apt install -y pkg-config libasound2-dev libssl-dev cmake libfreetype6-dev libexpat1-dev libxcb-composite0-dev

exit 0

#!/usr/bin/env bash

# ミニマムインストール用

function install_cargo() {
  echo '======================================================='
  echo "[LOG] START: $ cargo install $1"
  echo '======================================================='

  cargo install "$1"

  echo '======================================================='
  echo "[LOG] END: $ cargo install $1"
  echo '======================================================='
}

# Required:
# alpine: $ apk add build-base openssl

cargo install --git https://github.com/Peltoche/lsd.git --branch master # https://github.com/Peltoche/lsd
install_cargo bat
install_cargo exa

exit 0

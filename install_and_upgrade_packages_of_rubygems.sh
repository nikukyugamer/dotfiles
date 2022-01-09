#!/bin/bash

function install_gem() {
  echo '======================================================='
  echo "[LOG] START: $ gem install $1"
  echo '======================================================='

  gem install "$1"

  echo '======================================================='
  echo "[LOG] END: $ gem install $1"
  echo '======================================================='
}

function gem_update() {
  echo '======================================================='
  echo "[LOG] START: $ gem update"
  echo '======================================================='

  gem update

  echo '======================================================='
  echo "[LOG] END: $ gem update"
  echo '======================================================='
}

install_gem pry
install_gem whenever

gem_update

exit 0

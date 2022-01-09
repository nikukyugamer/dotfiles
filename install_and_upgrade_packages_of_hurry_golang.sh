#!/bin/bash

function go_install() {
  echo '======================================================='
  echo "[LOG] START: $ go install $1"
  echo '======================================================='

  go install "$1"

  echo '======================================================='
  echo "[LOG] END: $ go install $1"
  echo '======================================================='

  echo '**********************************************************************'
}

function init_directories() {
  echo '======================================================='
  echo "[LOG] START: Init directories for Go"
  echo '======================================================='

  mkdir -p ~/.go
  mkdir -p ~/.ghq

  echo '======================================================='
  echo "[LOG] END: Init directories for Go"
  echo '======================================================='

  echo '**********************************************************************'
}

init_directories

go_install github.com/x-motemen/ghq@latest
go_install github.com/b4b4r07/gomi@latest

exit 0

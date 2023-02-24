#!/usr/bin/env bash

# ミニマムインストール用

function npm_install_g() {
  echo '======================================================='
  echo "[LOG] START: $ npm install -g $1"
  echo '======================================================='

  npm install -g "$1"

  echo '======================================================='
  echo "[LOG] END: $ npm install -g $1"
  echo '======================================================='

  echo '**********************************************************************'
}

function install_git_cz() {
  echo '======================================================='
  echo '[LOG] START: git-cz installation'
  echo '======================================================='

  NODE_VERSION_WITHOUT_V=$(node -v | sed 's/^v//')
  GIT_CZ_PATH="/home/meganekko/.nodenv/versions/${NODE_VERSION_WITHOUT_V}/lib/node_modules/git-cz"

  echo "[LOG] START (Step 1): $ npm install -g commitizen"
  npm install -g commitizen # https://github.com/commitizen/cz-cli
  echo "[LOG] END (Step 1): $ npm install -g commitizen"

  echo '------------------------------------------------------'

  echo "[LOG] START (Step 2): $ npm install -g --force git-cz"
  rm -rf "$GIT_CZ_PATH"
  npm uninstall -g git-cz
  npm install -g --force git-cz # https://github.com/streamich/git-cz
  echo "[LOG] END (Step 2): $ npm install -g --force git-cz"

  echo '======================================================='
  echo '[LOG] END: git-cz installation'
  echo '======================================================='

  echo '**********************************************************************'
}

npm_install_g yarn
npm_install_g diff-so-fancy
install_git_cz

exit 0

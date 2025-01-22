#!/usr/bin/env bash

function install_cargo() {
  echo '======================================================='

  echo '======================================================='

  cargo install "$1" --locked

  echo '======================================================='
  echo "[LOG] END: $ cargo install $1"
  echo '======================================================='
}

function cargo_install_update_all() {
  echo '======================================================='
  echo "[LOG] START: $ cargo install-update --all"
  echo '======================================================='

  cargo install-update --all

  echo '======================================================='
  echo "[LOG] END: $ cargo install-update --all"
  echo '======================================================='

  echo '**********************************************************************'
}

install_cargo cargo-update
cargo_install_update_all

cargo install --git https://github.com/Peltoche/lsd.git --branch master # https://github.com/Peltoche/lsd

install_cargo ag
install_cargo bat
install_cargo bottom
install_cargo broot
install_cargo diskonaut
install_cargo du-dust
install_cargo exa
install_cargo fd-find
install_cargo git-delta
install_cargo git-interactive-rebase-tool
install_cargo gitui # https://github.com/extrawurst/gitui
install_cargo grex
install_cargo hyperfine
install_cargo kiro-editor
install_cargo macchina # https://github.com/Macchina-CLI/macchina
install_cargo procs
install_cargo railwayapp
install_cargo ripgrep
install_cargo ripgrep_all # ffmpeg などが必要
install_cargo sd          # Alt "sed" https://github.com/chmln/sd
install_cargo simple-http-server
install_cargo tailspin # https://github.com/bensadeh/tailspin (A log file highlighter)
install_cargo tealdeer
install_cargo tokei # https://github.com/XAMPPRocky/tokei
install_cargo xcompress
install_cargo xh # https://github.com/ducaale/xh
install_cargo yazi-fm yazi-cli # https://yazi-rs.github.io/

# https://github.com/dathere/qsv
# "--features python" は Python のバージョンによりインストールに失敗するので原則として外すことにする
# cargo install qsv --locked --features feature_capable,apply,fetch,foreach,geocode,luau,polars,python,self_update,ui
echo
echo 'Install "qsv"'
cargo install qsv --locked --bin qsv --features feature_capable,apply,fetch,foreach,geocode,luau,polars,self_update,ui

echo

echo 'Update "tealdeer (tldr)"'
tldr --update

exit 0

#!/bin/bash

function install_cargo() {
  echo '======================================================='
  echo "[LOG] START: $ cargo install $1"
  echo '======================================================='

  cargo install "$1"

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

# install_cargo deno --locked
install_cargo git-interactive-rebase-tool
install_cargo onefetch
install_cargo gitui # https://github.com/extrawurst/gitui
install_cargo tokei # https://github.com/XAMPPRocky/tokei
install_cargo ripgrep_all # https://github.com/phiresky/ripgrep-all
install_cargo miniserve --locked # https://github.com/svenstaro/miniserve/issues/568
cargo install --git https://github.com/Peltoche/lsd.git --branch master # https://github.com/Peltoche/lsd
install_cargo simple-http-server
install_cargo diskonaut
install_cargo broot
install_cargo git-delta
install_cargo tealdeer
tldr --update
install_cargo du-dust
install_cargo procs
install_cargo grex
install_cargo bat
install_cargo ripgrep
install_cargo fd-find
install_cargo exa
install_cargo silicon
install_cargo kiro-editor
install_cargo monolith # https://github.com/Y2Z/monolith
install_cargo ag

exit 0

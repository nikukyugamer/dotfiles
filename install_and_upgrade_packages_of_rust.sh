#!/usr/bin/env bash

function install_cargo() {
  echo '======================================================='

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

cargo install --git https://github.com/Peltoche/lsd.git --branch master # https://github.com/Peltoche/lsd
install_cargo ag
# install_cargo bandwhich # sudo が必要
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
# install_cargo miniserve --locked # https://github.com/svenstaro/miniserve/issues/568
# install_cargo monolith # https://github.com/Y2Z/monolith
# install_cargo onefetch # M2 Mac でインストールに失敗するのでスキップ
install_cargo procs
# install_cargo railwayapp # v3.4.0 からビルドに失敗する（非推奨インストール方法）なのでコメントアウト
install_cargo ripgrep
# install_cargo ripgrep_all # https://github.com/phiresky/ripgrep-all # ffmpeg が必要で影響範囲が広い
install_cargo sd # Alt "sed" https://github.com/chmln/sd
# install_cargo silicon
# install_cargo simple-http-server
install_cargo tealdeer
install_cargo tokei # https://github.com/XAMPPRocky/tokei
install_cargo zoxide

tldr --update

# install_cargo deno --locked
cargo install railwayapp --locked

exit 0

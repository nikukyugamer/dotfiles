#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

echo "fvm は Homebrew で入れることを推奨する"
echo "ただしその場合は定期的に brew update を実行する必要がある"
echo
echo "Homebrew は Ubuntu でも入れられる (https://brew.sh/ja/)"
echo "Ubuntu の場合は /home/linuxbrew というユーザが作られて、その配下を参照する形になる"
echo
echo "cf. https://fvm.app/documentation/getting-started/installation"
echo "$ brew tap leoafarias/fvm"
echo "$ brew install fvm"
echo
echo "install.sh でのインストールは推奨しない"
echo "cf. https://github.com/leoafarias/fvm/pull/792"
echo "cf. https://github.com/leoafarias/fvm/issues/796"
echo
echo "インストール後はシェルの設定ファイルに環境変数を設定すること"
echo "# Flutter (Use fvm)"
echo "export FLUTTER_HOME=$HOME/fvm/default"
echo "export PATH=$PATH:$FLUTTER_HOME/bin"

# curl -fsSL https://fvm.app/install.sh | bash

exit 0

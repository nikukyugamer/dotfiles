#!/usr/bin/env bash
set -euxo pipefail

# $HOME/bin/latest_git にソースからビルドした git のコマンドをインストールする
rm -rf /tmp/latest_git
mkdir -p /tmp/latest_git

cd /tmp/latest_git
/usr/bin/git clone https://github.com/git/git.git
cd git

LIBRARY_PATH=":/opt/homebrew/opt/openssl@3/lib/" make configure && LIBRARY_PATH=":/opt/homebrew/opt/openssl@3/lib/" ./configure --prefix=$HOME/bin/latest_git && LIBRARY_PATH=":/opt/homebrew/opt/openssl@3/lib/" make && LIBRARY_PATH=":/opt/homebrew/opt/openssl@3/lib/" make install

rm -rf /tmp/latest_git

echo "git --version"
git --version

exit 0

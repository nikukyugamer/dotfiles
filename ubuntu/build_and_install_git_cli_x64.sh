#!/usr/bin/env bash
set -euxo pipefail

# $HOME/bin/latest_git にソースからビルドした git のコマンドをインストールする
rm -rf /tmp/latest_git
mkdir -p /tmp/latest_git

cd /tmp/latest_git
/usr/bin/git clone https://github.com/git/git.git
cd git

make configure && ./configure --prefix=$HOME/bin/latest_git && make all info doc && LIBRARY_PATH=":/opt/homebrew/opt/openssl@3/lib/" make install info doc

rm -rf /tmp/latest_git

echo "git --version"
cd $HOME/bin/latest_git
bin/git --version

exit 0

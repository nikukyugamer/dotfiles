#!/bin/bash -xe

# bash: go: コマンドが見つかりません となって死ぬ
git clone http://github.com/zimbatm/direnv
cd direnv
sudo make install
cd ..
sudo rm -rf direnv

exit 0

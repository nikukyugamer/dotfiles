#!/bin/sh -x
# -e はエラーがあるとそこで止まる
# -u は未定義の変数を使うとしたらそこで止まる

./all_update_and_upgrade_without_golang.sh && ./install_and_upgrade_packages_of_golang.sh && brew upgrade

nodenv install -l | grep 14.1
nodenv versions

goenv install -l | tail -n 5
goenv versions

exit 0

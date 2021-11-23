#!/bin/sh
# -x はコマンドを実行する際にそのコマンドの内容を標準出力に出す
# -e はエラーがあるとそこで止まる
# -u は未定義の変数を使うとしたらそこで止まる

echo '----------------------------------------------'
echo 'Execute update scripts'
echo '----------------------------------------------'
./all_update_and_upgrade_without_golang.sh && ./install_and_upgrade_packages_of_golang.sh && brew upgrade

echo '----------------------------------------------'
echo 'A list of "$ nodenv intall -l"'
echo 'NOTE: 特定のバージョンに絞り込んで表示している'
echo '----------------------------------------------'
nodenv install -l | grep ^14.1

echo '----------------------------------------------'
echo 'A list of "$ nodenv versions"'
echo '----------------------------------------------'
nodenv versions

echo '----------------------------------------------'
echo 'A list of "$ goenv install -l"'
echo '----------------------------------------------'
goenv install -l | tail -n 5

echo '----------------------------------------------'
echo 'A list of "$ goenv versions"'
echo '----------------------------------------------'
goenv versions

exit 0


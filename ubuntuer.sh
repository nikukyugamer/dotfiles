#!/bin/sh

# TODO: Write an installation command

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

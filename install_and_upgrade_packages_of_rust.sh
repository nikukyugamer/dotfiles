#!/bin/bash

echo 'Install bat...'
cargo install --force bat
echo 'bat Done.'
echo 'If you would like to show without line numbers, use "-p" option'

echo 'Install ripgrep...'
cargo install --force ripgrep
echo 'ripgrep Done.'
echo 'Usage: $ rga "hello" demo/'

echo 'Install fd(fd-find)...'
cargo install --force fd-find
echo 'fd(fd-find) Done.'
echo 'Usage: $ fd "^x.*rc$"'

echo 'Install exa...'
cargo install --force exa
echo 'exa Done.'
echo 'Usage: $ exa -Tl'

exit 0


#!/bin/bash

echo 'Install bat...'
cargo install --force bat
echo 'bat Done.'
echo 'If you would like to show without line numbers, use "-p" option'

echo 'Install ripgrep...'
cargo install --force ripgrep_all
echo 'ripgrep Done.'
echo 'Usage: $ rga "hello" demo/'

exit 0


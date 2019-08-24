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

echo 'Install Silicon (Capture source codes)...'
cargo install --force silicon
echo 'Silicon Done.'
echo 'Usage: $ silicon main.rs -o main.png'

echo 'Install monolith (Pack a webpage to a single file)'
git clone https://github.com/Y2Z/monolith.git /tmp/monolith
cd /tmp/monolith
~/.cargo/bin/cargo install --force --path .
cd ~ && rm -rf /tmp/monolith
echo '"monolith" installation has done.'
echo 'Usage: $ monolith https://www.amazon.co.jp/ > amazon.html'

exit 0


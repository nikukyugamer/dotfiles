#!/bin/bash

echo 'Install cargo-update'
cargo install cargo-update
echo 'A "cargo-update" installation has done.'

cargo install-update --all

echo 'Install broot (A new way to see and navigate directory trees)'
cargo install broot
echo '"broot" installation has done'

echo 'Install delta (git-delta) (A syntax-highlighter for git and diff output)'
cargo install git-delta
echo '"delta (git-delta)" installation has done'

echo 'Install tealdeer (Community based "tlde" command, which is the same as "man" command)'
cargo install tealdeer
tldr --update
echo '"tealdeer" installation is done.'

echo 'Install dust (du command powered by Rust)'
cargo install du-dust
echo 'dust installation is done.'

echo 'Install procs (Alt ps command)'
cargo install procs
echo 'procs installation is done.'

echo 'Install grex...'
cargo install grex
echo 'grex installation is done.'
echo 'grex is a small command-line utility that is meant to simplify the often complicated and tedious task of creating regular expressions.'

echo 'Install bat...'
cargo install bat
echo 'bat Done.'
echo 'If you would like to show without line numbers, use "-p" option'

echo 'Install ripgrep...'
cargo install ripgrep
echo 'ripgrep Done.'
echo 'Usage: $ rga "hello" demo/'

echo 'Install fd(fd-find)...'
cargo install fd-find
echo 'fd(fd-find) Done.'
echo 'Usage: $ fd "^x.*rc$"'

echo 'Install exa...'
cargo install exa
echo 'exa Done.'
echo 'Usage: $ exa -Tl'

echo 'Install Silicon (Capture source codes)...'
cargo install silicon
echo 'Silicon Done.'
echo 'Usage: $ silicon main.rs -o main.png'

echo 'Install kiro-editor (Like micro)...'
cargo install kiro-editor
echo 'kill-editor installation has been done.'
echo 'Usage: $ kiro hoge.txt'

echo 'Install monolith (Pack a webpage to a single file)'
# git clone https://github.com/Y2Z/monolith.git /tmp/monolith
# cd /tmp/monolith
# ~/.cargo/bin/cargo install --force --path .
# cd ~ && rm -rf /tmp/monolith
cargo install monolith
echo '"monolith" installation has done.'
echo 'Usage: $ monolith https://www.amazon.co.jp/ > amazon.html'

echo 'Install "angle-grinder" (Logs analytics CLI tool)'
cargo install ag
echo '"angle-grinder" installation has done.'
echo 'Usage: $ agrind --help'

exit 0

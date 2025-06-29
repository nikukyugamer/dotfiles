#!/usr/bin/env bash

sudo apt update
sudo apt install -y whois
sudo apt install -y dialog rsync zsh unzip
sudo apt install -y locales fonts-ipafont fonts-ipaexfont
sudo apt install -y gh peco direnv expect neovim unar rclone
sudo apt install -y libmysqlclient-dev mysql-client
sudo apt install -y libpq-dev postgresql-client

# ビルド用ライブラリは rbenv などに主要なものが入っているのでそちらも入れること
sudo apt install -y cmake

# git コマンド をビルドする際に必要になる
sudo apt install -y gettext asciidoc docbook2x libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev

echo
echo "環境によっては uv で asciidoc を入れる必要がある"

exit 0

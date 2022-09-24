#!/usr/bin/env bash

sudo apt update
sudo apt install -y dialog rsync zsh
sudo apt install -y locales fonts-ipafont fonts-ipaexfont
sudo apt install -y gh peco direnv expect neovim unar rclone
sudo apt install -y libmysqlclient-dev mysql-client
sudo apt install -y libpq-dev postgresql-client

exit 0

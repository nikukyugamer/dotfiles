#!/usr/bin/env bash

sudo apt update
sudo apt install -y rsync gh peco direnv expect neovim unar rclone
sudo apt install -y libmysqlclient-dev mysql-client
sudo apt install -y libpq-dev postgresql-client

exit 0

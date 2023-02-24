#!/usr/bin/env bash

# https://github.com/embulk/embulk
curl --create-dirs -o ~/.embulk/bin/embulk -L "https://dl.embulk.org/embulk-latest.jar"
chmod +x ~/.embulk/bin/embulk

~/.embulk/bin/embulk gem install embulk-input-postgresql
~/.embulk/bin/embulk gem install embulk-output-postgresql
~/.embulk/bin/embulk gem install embulk-input-mysql
~/.embulk/bin/embulk gem install embulk-output-mysql
~/.embulk/bin/embulk gem install embulk-filter-column
~/.embulk/bin/embulk gem install embulk-filter-ruby_proc

exit 0

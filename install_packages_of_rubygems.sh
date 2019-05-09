#!/bin/bash -xe

gem install rubocop
gem install rubocop-performance

# gem install mysql2
# if MySQL version is 8, on macOS,
# $ gem install mysql2 -- --local build.mysql2 "--with-ldflags=-L/usr/local/opt/openssl/lib"

gem install pg
gem install itamae
gem install ridgepole
gem install pry

exit 0


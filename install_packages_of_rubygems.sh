#!/bin/bash -xe

gem install rubocop-performance
gem install rubocop
gem install solargraph

# gem install mysql2
# if MySQL version is 8, on macOS,
# $ gem install mysql2 -- --local build.mysql2 "--with-ldflags=-L/usr/local/opt/openssl/lib"

gem install pg
gem install sqlite3
gem install itamae
gem install ridgepole
gem install pry
gem install whenever

gem update

exit 0


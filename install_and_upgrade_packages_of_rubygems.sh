#!/bin/bash -xe

# gem install rubocop-performance
# gem install rubocop
# gem install rubocop-rails
# gem install rubocop-rspec
# gem install solargraph
# gem install rb-readline

# gem install mysql2
# if MySQL version is 8, on macOS,
# $ gem install mysql2 -- --local build.mysql2 "--with-ldflags=-L/usr/local/opt/openssl/lib"

# gem install pg
# gem install sqlite3
# gem install squasher

echo '========================================'
echo 'Start: RubyGems installation'
gem install itamae
gem install ridgepole
gem install pry
gem install whenever
echo 'Done: RubyGems installation'
echo '========================================'

# For Visual Studio Code
# gem install ruby-debug-ide
# gem install debase

# https://impsbl.hatenablog.jp/entry/RubyInVSCode1
# Solargraph さえあればどれも必須ではないっぽい（か、依存関係で入っている）
# gem install rcodetools
# gem install ruby-lint
# gem install reek
# gem install faster
# gem install debride

# gem install bundler-diff

# gem install rspec
# gem install foreman

# For 'kv'
# gem install curses

# gem install twurl

# rails new 時などのトラブル防止
# gem uninstall fileutils

gem update

exit 0


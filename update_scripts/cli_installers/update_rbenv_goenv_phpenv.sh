#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

echo '----------'

echo "$HOME/.rbenv"
cd "$HOME/.rbenv" && git pull
echo '----------'

echo "$HOME/.rbenv/plugins/ruby-build"
cd "$HOME/.rbenv/plugins/ruby-build" && git pull
echo '----------'

echo "$HOME/.goenv"
cd "$HOME/.goenv" && git pull
echo '----------'

echo "$HOME/.goenv/plugins/go-build"
cd "$HOME/.goenv/plugins/go-build" && git pull
echo '----------'

echo "$HOME/.phpenv"
cd "$HOME/.phpenv" && git pull
cd "$HOME/.phpenv/plugins/php-build" && git pull
cd "$HOME/.phpenv/plugins/phpenv-composer" && git pull
echo '----------'

exit 0

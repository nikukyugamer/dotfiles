#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# rbenv
git clone https://github.com/sstephenson/rbenv.git "$HOME"/.rbenv
git clone https://github.com/sstephenson/ruby-build.git "$HOME"/.rbenv/plugins/ruby-build

# phpenv
git clone https://github.com/phpenv/phpenv.git "$HOME"/.phpenv
git clone https://github.com/php-build/php-build "$HOME"/.phpenv/plugins/php-build
git clone https://github.com/ngyuki/phpenv-composer.git "$HOME"/.phpenv/plugins/phpenv-composer

exit 0

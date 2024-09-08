#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

git clone https://github.com/sstephenson/rbenv.git "$HOME"/.rbenv
git clone https://github.com/sstephenson/ruby-build.git "$HOME"/.rbenv/plugins/ruby-build

git clone https://github.com/nodenv/nodenv.git "$HOME"/.nodenv
git clone https://github.com/nodenv/node-build.git "$HOME"/.nodenv/plugins/node-build

# Python は Rye に統一されつつあるので、不要になりつつある
git clone https://github.com/pyenv/pyenv.git "$HOME"/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git "$HOME"/.pyenv/plugins/pyenv-virtualenv

git clone https://github.com/syndbg/goenv.git "$HOME"/.goenv

# https://github.com/jenv/jenv
# $ /usr/libexec/java_home -V
# $ jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home
git clone https://github.com/jenv/jenv.git "$HOME"/.jenv

# https://github.com/phpenv/phpenv
git clone https://github.com/phpenv/phpenv.git "$HOME"/.phpenv
git clone https://github.com/php-build/php-build "$HOME"/.phpenv/plugins/php-build
git clone https://github.com/ngyuki/phpenv-composer.git "$HOME"/.phpenv/plugins/phpenv-composer

# tfenv
git clone https://github.com/tfutils/tfenv.git "$HOME"/.tfenv

exit 0

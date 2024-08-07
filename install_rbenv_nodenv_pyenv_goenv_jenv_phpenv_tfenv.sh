#!/usr/bin/env bash

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

git clone https://github.com/syndbg/goenv.git ~/.goenv

# https://github.com/jenv/jenv
# $ /usr/libexec/java_home -V
# $ jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home
git clone https://github.com/jenv/jenv.git ~/.jenv

# https://github.com/phpenv/phpenv
git clone https://github.com/phpenv/phpenv.git ~/.phpenv
git clone https://github.com/php-build/php-build ~/.phpenv/plugins/php-build
git clone https://github.com/ngyuki/phpenv-composer.git ~/.phpenv/plugins/phpenv-composer

# tfenv
git clone https://github.com/tfutils/tfenv.git ~/.tfenv

exit 0

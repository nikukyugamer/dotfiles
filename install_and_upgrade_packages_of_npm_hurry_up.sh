#!/bin/bash

# nodenv (npm) を再度入れ直した際に、最低限の必須コマンドだけを入れるスクリプト（急いでいるとき用）

echo '========================================'
echo 'Install Yarn via npm...'
npm install -g yarn
echo 'DONE: Install Yarn via npm'
echo '========================================'

echo '========================================'
echo 'Install diff-so-fancy'
npm install -g diff-so-fancy
echo 'DONE: Install diff-so-fancy'
echo '========================================'

echo '========================================'
echo 'Install Commitizen (https://github.com/commitizen/cz-cli)'
npm uninstall -g commitizen
npm install -g --force commitizen
# "cz-conventional-changelog-ja" is not cool
# npm install -g cz-conventional-changelog-ja
# https://github.com/streamich/git-cz
npm uninstall -g cz-conventional-changelog-ja
npm uninstall -g git-cz
npm install -g --force git-cz
echo 'DONE: Install Commitizen'
echo '========================================'

exit 0

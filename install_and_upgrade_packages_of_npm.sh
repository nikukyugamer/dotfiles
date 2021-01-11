#!/bin/bash

echo '========================================'
echo 'Install npm...'
npm install -g npm
echo 'DONE: Install npm'
echo '========================================'

echo '========================================'
echo 'Install Yarn via npm...'
npm install -g yarn
echo 'DONE: Install Yarn via npm'
echo '========================================'

echo '========================================'
echo 'Install npm-check-updates (ncu)'
npm install -g npm-check-updates
echo 'DONE: npm-check-updates (ncu) installation!'
echo '========================================'

echo '========================================'
echo 'Install @google/clasp...'
npm install -g @google/clasp
echo 'DONE: @google/clasp installation!'
echo '========================================'

echo '========================================'
echo 'Install fx (JSON CLI tool)'
npm install -g fx
echo 'DONE: fx (JSON CLI tool) installation!'
echo '========================================'

echo '========================================'
echo 'Install kmdr-cli...'
npm install -g kmdr
echo 'DONE: kmdr-cli installation!'
echo '========================================'

echo '========================================'
echo 'Install Prettier...'
npm install -g prettier
echo 'DONE: Install Prettier'
echo '========================================'

echo '========================================'
echo 'yukichant（テキストデータを詠唱呪文に変換するコマンド）をインストールします'
npm install -g yukichant
echo 'yukichant（テキストデータを詠唱呪文に変換するコマンド）のインストールが完了しました'
echo 'Usage:'
echo '$ echo Hello,World | chant'
echo '巫女よ五行に元に斬る。戦慄の貪欲使命を隠し。嵐は記憶の行く手を砕ける。'
echo '$ echo 巫女よ五行に元に斬る。戦慄の貪欲使命を隠し。嵐は記憶の行く手を砕ける。 | chant -d'
echo 'Hello,World'
echo '========================================'

echo '========================================'
echo 'Install pm2 (Advanced, production process manager) ...'
npm install -g pm2
echo 'pm2 is installed!'
echo '========================================'

# It is not necessary to install for global
# echo 'Install textlint...'
# npm install -g textlint
# echo 'DONE: Install textlint'

echo '========================================'
echo 'Install jshint...'
npm install -g jshint
echo 'DONE: Install jshint'
echo '========================================'

echo '========================================'
echo 'Install js-beautify...'
npm install -g js-beautify
echo 'DONE: Install js-beautify'
echo '========================================'

echo '========================================'
echo 'Install typescript...'
npm install -g typescript
echo 'DONE: Install typescript'
echo '========================================'

echo '========================================'
echo 'Install ts-node...'
npm install -g ts-node
echo 'DONE: Install ts-node'
echo '========================================'

echo '========================================'
echo 'Install capture-website-cli...'
npm install -g capture-website-cli
echo 'DONE: Install capture-website-cli'
echo '========================================'

echo '========================================'
echo 'Install @vue/cli...'
npm install -g @vue/cli
echo 'DONE: Install @vue/cli'
echo '========================================'

echo '========================================'
echo 'Install @vue/cli-init...'
npm install -g @vue/cli-init
echo 'DONE: Install @vue/cli-init'
echo '========================================'

echo '========================================'
echo '💪 Install @amanoese/muscular... 💪'
npm install -g @amanoese/muscular
echo '💪 DONE: Install @vue/cli-init 💪'
echo '========================================'

echo '========================================'
echo 'Install "trello-cli"'
npm install -g trello-cli
echo 'DONE: Install "trello-cli"'
echo '========================================'

echo '========================================'
echo 'Install "jsonlint"'
npm install -g jsonlint
echo 'DONE: Install "jsonlint"'
echo '========================================'

echo '========================================'
echo 'Install @fand/kao'
npm install -g @fand/kao
echo 'DONE: Install @fand/kao'
echo '========================================'

echo '========================================'
echo 'Install dsstore-cli (Remove .DS_Store)'
npm install -g dsstore-cli
echo 'DONE: Install dsstore-cli'
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

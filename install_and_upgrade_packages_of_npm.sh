#!/bin/bash -xe

echo 'Install npm...'
npm install -g npm
echo 'DONE: Install npm'

# システムグローバルに入れるのがベターっぽい（検討中）
# echo 'Install yarn...'
# npm install -g yarn
# echo 'DONE: Install yarn'

# Not recommend to install globally
# npm install -g eslint
# npm install -g vue
# npm install -g prettier

#     "eslint": "^5.12.1",
#     "eslint-config-standard": "^12.0.0",
#     "eslint-plugin-import": "^2.14.0",
#     "eslint-plugin-node": "^8.0.1",
#     "eslint-plugin-promise": "^4.0.1",
#     "eslint-plugin-standard": "^4.0.0",
#     "eslint-plugin-vue": "^5.1.0"

echo 'yukichant（テキストデータを詠唱呪文に変換するコマンド）をインストールします'
npm install -g yukichant
echo 'yukichant（テキストデータを詠唱呪文に変換するコマンド）のインストールが完了しました'

echo 'Install pm2 (Advanced, production process manager) ...'
npm install -g pm2
echo 'pm2 is installed!'

echo 'Install jshint...'
npm install -g jshint
echo 'DONE: Install jshint'

echo 'Install js-beautify...'
npm install -g js-beautify
echo 'DONE: Install js-beautify'

echo 'Install typescript...'
npm install -g typescript
echo 'DONE: Install typescript'

# バージョン依存がひどい
# npm install -g terminalizer

echo 'Install capture-website-cli...'
npm install -g capture-website-cli
echo 'DONE: Install capture-website-cli'

echo 'Install @vue/cli...'
npm install -g @vue/cli
echo 'DONE: Install @vue/cli'

echo 'Install @vue/cli-init...'
npm install -g @vue/cli-init
echo 'DONE: Install @vue/cli-init'

echo '💪 Install @amanoese/muscular... 💪'
npm install -g @amanoese/muscular
echo '💪 DONE: Install @vue/cli-init 💪'

# これ必要？安全のために実行しているが……
echo 'npm update...'
npm update
echo 'npm update is done!'

exit 0


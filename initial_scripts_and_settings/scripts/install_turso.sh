#!/usr/bin/env bash
set -euxo pipefail

# 公式ドキュメント
# https://docs.turso.tech/quickstart

# Linux
# インストールされる場所は ~/.turso/ 配下 なので一般ユーザで実行して OK である
echo 'インストール時に Webブラウザ にて認証が求められることがあります。'
echo 'Webブラウザ での認証は一旦キャンセルして、また後で $ turso auth login で実行することが可能です'
curl -sSfL https://get.tur.so/install.sh | bash

# cf. macOS
# brew install tursodatabase/tap/turso

echo 'Turso CLI をインストールしました。'
echo 'シェルの設定ファイルの最後尾に PATH が自動追記されました。'
echo 'source コマンドを実行してシェルを再読み込みし $ which turso でインストールの確認をしてください。'

exit 0

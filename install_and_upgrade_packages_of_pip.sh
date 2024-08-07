#!/usr/bin/env bash

function install_pip() {
  echo '======================================================='
  echo "[LOG] START: $ pip install --upgrade $1"
  echo '======================================================='

  pip install --upgrade "$1"

  echo '======================================================='
  echo "[LOG] END: $ pip install --upgrade $1"
  echo '======================================================='

  echo '**********************************************************************'
}

install_pip pip
install_pip pipx   # https://github.com/pypa/pipx
install_pip pipenv # https://github.com/pypa/pipenv

install_pip asciidoc # git のビルド用
install_pip aws-encryption-sdk-cli # https://aws-encryption-sdk-cli.readthedocs.io/en/latest/
# install_pip awsebcli # 不要と思われるのでコメントアウト
install_pip bottle
install_pip chat_downloader
install_pip cuteuid # https://github.com/alexdredmon/cuteuid
install_pip glances
# install_pip httpie # yt-dlp とライブラリがバッティングするのでコメントアウト
install_pip https://github.com/egbertbouman/youtube-comment-downloader/archive/master.zip
install_pip instaloader
install_pip mycli
install_pip pgcli
install_pip psycopg2-binary
install_pip pysnmp
install_pip pyxattr
install_pip ranger-fm # ranger (CLI Filer)
install_pip sen       # https://github.com/TomasTomecek/sen
install_pip setuptools
install_pip stormssh
install_pip streamlink # pip で入れないと TLS 周りでエラーが出るので、pip で入れる
install_pip termdown
install_pip twitterscraper # https://github.com/taspinar/twitterscraper
install_pip twspace-dl     # https://github.com/HoloArchivists/twspace-dl
install_pip wad            # WAD (Web application detector)
install_pip youtube-dl
install_pip yt-dlp

# 開発用
install_pip poetry
install_pip ruff
install_pip mypy

# ChatGPT API を用いたシェルスクリプト生成ツール
# 要 v3.10 以上
# install_pip wanna

# asciinema is a suite of tools for recording, replaying, and sharing terminal sessions.
# https://docs.asciinema.org/manual/
install_pip asciinema

# https://yamllint.readthedocs.io/en/stable/
install_pip yamllint

exit 0

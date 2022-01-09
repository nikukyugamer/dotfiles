#!/bin/bash

function install_pip() {
  echo '======================================================='
  echo "[LOG] START: $ pip install --upgrade $1"
  echo '======================================================='

  pip install --upgrade "$1"

  echo '======================================================='
  echo "[LOG] END: $ pip install --upgrade $1"
  echo '======================================================='
}

install_pip pip
install_pip pipx # https://github.com/pypa/pipx
install_pip pipenv # https://github.com/pypa/pipenv
install_pip sen # https://github.com/TomasTomecek/sen
install_pip aws-encryption-sdk-cli # https://aws-encryption-sdk-cli.readthedocs.io/en/latest/
install_pip pyxattr
install_pip yt-dlp
install_pip https://github.com/egbertbouman/youtube-comment-downloader/archive/master.zip
install_pip chat_downloader
install_pip wad # WAD (Web application detector)
install_pip ranger-fm # ranger (CLI Filer)
install_pip termdown
install_pip setuptools
install_pip mycli
install_pip pgcli
install_pip psycopg2-binary
install_pip youtube-dl
install_pip httpie
install_pip instaloader
install_pip awsebcli
install_pip glances
install_pip pysnmp
install_pip bottle
install_pip cuteuid # https://github.com/alexdredmon/cuteuid
install_pip twitterscraper # https://github.com/taspinar/twitterscraper
install_pip stormssh
install_pip streamlink

exit 0

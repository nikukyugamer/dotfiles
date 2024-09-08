#!/usr/bin/env bash

function rye_tools_install() {
  echo '======================================================='
  echo "[LOG] START: $ rye tools install --force $1"
  echo '======================================================='

  rye tools install --force "$1"

  echo '======================================================='
  echo "[LOG] END: $ rye tools install --force $1"
  echo '======================================================='

  echo '**********************************************************************'
}

rye_tools_install asciidoc               # git のビルド用
rye_tools_install asciinema              # https://docs.asciinema.org/manual/
rye_tools_install aws-encryption-sdk-cli # https://aws-encryption-sdk-cli.readthedocs.io/en/latest/
rye_tools_install bottle
rye_tools_install chat_downloader
rye_tools_install cuteuid # https://github.com/alexdredmon/cuteuid
rye_tools_install glances
rye_tools_install httpie
rye_tools_install instaloader
rye_tools_install mycli
rye_tools_install pgcli
rye_tools_install psycopg2-binary
rye_tools_install pysnmp
rye_tools_install pyxattr
rye_tools_install ranger-fm # ranger (CLI Filer)
rye_tools_install sen       # https://github.com/TomasTomecek/sen
rye_tools_install setuptools
rye_tools_install stormssh
rye_tools_install streamlink
rye_tools_install termdown
rye_tools_install twitterscraper # https://github.com/taspinar/twitterscraper
rye_tools_install twspace-dl     # https://github.com/HoloArchivists/twspace-dl
rye_tools_install wad            # WAD (Web application detector)
rye_tools_install yamllint       # https://yamllint.readthedocs.io/en/stable/
rye_tools_install youtube-comment-downloader
rye_tools_install youtube-dl
rye_tools_install yt-dlp

exit 0

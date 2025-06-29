#!/usr/bin/env bash

function uv_tool_install() {
  echo '======================================================='
  echo "[LOG] START: $ uv tool install --upgrade $1"
  echo '======================================================='

  uv tool install --upgrade "$1"

  echo '======================================================='
  echo "[LOG] END: $ uv tool install --upgrade $1"
  echo '======================================================='

  echo '**********************************************************************'
}

uv_tool_install asciidoc               # git のビルド用
uv_tool_install asciinema              # https://docs.asciinema.org/manual/
uv_tool_install aws-encryption-sdk-cli # https://aws-encryption-sdk-cli.readthedocs.io/en/latest/
uv_tool_install bottle
uv_tool_install chat_downloader
uv_tool_install cuteuid # https://github.com/alexdredmon/cuteuid
uv_tool_install glances
uv_tool_install httpie
uv_tool_install instaloader
uv_tool_install mycli
uv_tool_install pgcli
uv_tool_install psycopg2-binary
uv_tool_install pysnmp
uv_tool_install pyxattr
uv_tool_install ranger-fm # ranger (CLI Filer)
uv_tool_install sen       # https://github.com/TomasTomecek/sen
uv_tool_install setuptools
uv_tool_install sqruff
uv_tool_install stormssh
uv_tool_install streamlink
uv_tool_install termdown
uv_tool_install twitterscraper # https://github.com/taspinar/twitterscraper
uv_tool_install twspace-dl     # https://github.com/HoloArchivists/twspace-dl
uv_tool_install wad            # WAD (Web application detector)
uv_tool_install yamllint       # https://yamllint.readthedocs.io/en/stable/
uv_tool_install youtube-comment-downloader
uv_tool_install youtube-dl
uv_tool_install yt-dlp

exit 0

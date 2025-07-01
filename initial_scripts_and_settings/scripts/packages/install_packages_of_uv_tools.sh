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
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install bottle
uv_tool_install chat_downloader
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install cuteuid # https://github.com/alexdredmon/cuteuid
uv_tool_install glances
uv_tool_install httpie
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install instaloader
uv_tool_install mycli
uv_tool_install pgcli
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install psycopg2-binary
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install pysnmp
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install pyxattr
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install ranger-fm # ranger (CLI Filer)
uv_tool_install sen       # https://github.com/TomasTomecek/sen
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install setuptools
uv_tool_install sqruff # https://github.com/quarylabs/sqruff (Fast SQL formatter/linter)
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install stormssh
uv_tool_install streamlink
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install termdown
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install twitterscraper # https://github.com/taspinar/twitterscraper
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install twspace-dl     # https://github.com/HoloArchivists/twspace-dl
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install wad            # WAD (Web application detector)
uv_tool_install yamllint       # https://yamllint.readthedocs.io/en/stable/
uv_tool_install youtube-comment-downloader
# 2025/07/01 にコメントアウトしたので時期をおいて削除
# uv_tool_install youtube-dl
uv_tool_install yt-dlp

exit 0

#!/usr/bin/env bash
set -euxo pipefail

# Linux の場合、インストールされる場所は以下になる
# ~/.local/bin
# ~/.local/share/pypoetry

curl -sSL https://install.python-poetry.org | python -

exit 0

#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# https://ollama.com/
# 要 sudo パスワード入力
# インストールされる場所は /usr/local/bin
# cf. WSL2 では systemd を有効にする必要がある
# cf. https://learn.microsoft.com/en-us/windows/wsl/systemd#how-to-enable-systemd
curl -fsSL https://ollama.com/install.sh | sh

exit 0

#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# amd64
wget https://github.com/tianon/gosu/releases/download/1.14/gosu-amd64 -O /tmp/gosu
chmod +x /tmp/gosu
sudo mv /tmp/gosu /usr/local/bin

echo "---------------------------------------------------------------------------"
echo "[LOG] $ which gosu"
which gosu
echo "---------------------------------------------------------------------------"
echo "[LOG] $ gosu version"
gosu version

exit 0

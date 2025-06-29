#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# mkcert is a simple tool for making locally-trusted development certificates.
# https://github.com/FiloSottile/mkcert

curl -JLO "https://dl.filippo.io/mkcert/latest?for=linux/amd64"
chmod +x mkcert-v*-linux-amd64
sudo cp mkcert-v*-linux-amd64 /usr/local/bin/mkcert
rm mkcert-v*-linux-amd64

exit 0

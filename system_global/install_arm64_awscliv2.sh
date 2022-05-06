#!/bin/bash
set -euxo pipefail
cd "$(dirname "$0")"

# https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/install-cliv2-linux.html
cd /tmp && curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
cd /tmp && unzip awscliv2.zip
cd /tmp && sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update

aws --version

exit 0

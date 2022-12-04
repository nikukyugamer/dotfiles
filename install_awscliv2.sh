#!/usr/bin/env bash
set -euxo pipefail

# https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/getting-started-install.html
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"

cd /tmp

unzip awscliv2.zip
./aws/install --install-dir $HOME/bin/aws-cli --bin-dir $HOME/bin

rm -rf /tmp/aws
rm /tmp/awscliv2.zip

exit 0

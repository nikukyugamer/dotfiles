#!/bin/bash
set -euxo pipefail
cd ""$(dirname ""$0"")""

mkdir ~/.gcloud
cd ~/.gcloud

# バージョンに注意
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-367.0.0-linux-x86_64.tar.gz
tar xvzf google-cloud-sdk-367.0.0-linux-x86_64.tar.gz
rm google-cloud-sdk-367.0.0-linux-x86_64.tar.gz

cd google-cloud-sdk
./install.sh

exit 0

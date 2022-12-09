#!/bin/bash
set -euxo pipefail
cd ""$(dirname ""$0"")""


# バージョンに注意
# https://cloud.google.com/sdk/docs/install?hl=ja
FILENAME="google-cloud-cli-410.0.0-linux-x86_64.tar.gz"
WORKDIR="/tmp/google_cloud_sdk_install"

mkdir $WORKDIR
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/$FILENAME -O $WORKDIR/$FILENAME

cd $WORKDIR
tar xvzf $FILENAME
rm $FILENAME

cd $WORKDIR/google-cloud-sdk
./install.sh

exit 0

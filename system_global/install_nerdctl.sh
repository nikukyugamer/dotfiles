#!/bin/bash -e

mkdir -p /tmp/nerdctl_workdir

# amd64
wget https://github.com/containerd/nerdctl/releases/download/v0.16.1/nerdctl-0.16.1-linux-amd64.tar.gz -O /tmp/nerdctl_workdir/nerdctl-0.16.1-linux-amd64.tar.gz

cd /tmp/nerdctl_workdir
tar xvf nerdctl-0.16.1-linux-amd64.tar.gz

sudo cp nerdctl /usr/local/bin

rm -rf /tmp/nerdctl_workdir

exit 0

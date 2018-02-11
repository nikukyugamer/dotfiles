#!/bin/bash

sudo yum install -y gcc openssl-devel readline-devel zlib-devel

git clone https://github.com/riywo/ndenv ~/.ndenv
git clone https://github.com/riywo/node-build.git $(ndenv root)/plugins/node-build

ndenv install 9.5.0
ndenv global 9.5.0

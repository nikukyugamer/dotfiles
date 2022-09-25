#!/usr/bin/env bash

sudo apt update

# sudo apt install -y openjdk-8-jdk openjdk-11-jdk openjdk-13-jdk openjdk-16-jdk openjdk-17-jdk
sudo apt install -y openjdk-8-jdk

echo 
echo "==================================================="
echo "jenv を用いて Java を設定してください"
echo "$ jenv add /usr/lib/jvm/java-8-openjdk-amd64"
echo "$ jenv versions"

exit 0

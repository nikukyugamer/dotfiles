#!/usr/bin/env bash

sudo apt install -y openjdk-8-jdk
sudo apt install -y openjdk-11-jdk

jenv add /usr/lib/jvm/java-8-openjdk-amd64/
jenv add /usr/lib/jvm/java-11-openjdk-amd64/

jenv versions

exit 0

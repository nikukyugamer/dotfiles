#!/bin/sh -xe

# https://helm.sh/docs/intro/install/
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt update -y
sudo apt install helm -y

exit 0


#!/usr/bin/env bash

# sudo が必要なコマンドは mkdir gpg tee
# https://docs.docker.com/engine/install/ubuntu/
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo
echo "インストールチェック"
echo "$ sudo service docker status"

echo
echo "一般ユーザでも実行できるようにするならグループ設定をすること"
echo "$ sudo usermod -aG docker TARGET_USER"

echo
echo "権限があるかどうかは $ docker image ls で一覧が表示できるかどうかでわかる"
echo "$ docker run --rm hello-world が実行できるかどうかでもわかる"
echo "hello-world を実行したあとは $ docker image rm hello-world をして掃除することを忘れずに"

exit 0

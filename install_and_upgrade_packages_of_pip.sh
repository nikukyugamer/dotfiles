#!/bin/bash

echo '========================================'
echo 'Upgrade pip'
pip install --upgrade pip
echo 'Upgrade pip Done!'
echo '========================================'

# 2020/10/24 scipy のインストールに失敗するため一時的に無効にする
# echo 'Upgrade numpy'
# pip install --upgrade numpy
# echo '========================================'
# echo 'Upgrade numpy Done!'
# echo '========================================'

# 2020/10/24 scipy のインストールに失敗するため一時的に無効にする
# echo '========================================'
# echo 'Upgrade Graphtage'
# echo 'Graphtage: A diff utility for tree-like files such as JSON, XML, HTML, YAML, and CSV.'
# echo '========================================'
# pip install --upgrade graphtage
# echo '========================================'
# echo 'Graphtage: Done!'
# echo '========================================'

echo '========================================'
echo 'Upgrade ranger (CLI Filer)'
pip install --upgrade ranger-fm
echo 'ranger-fm (ranger) Done!'
echo '========================================'

echo '========================================'
echo 'Upgrade termdown'
pip install --upgrade termdown
echo 'termdown Done!'
echo '========================================'

echo '========================================'
echo 'Upgrade setuptools'
pip install --upgrade setuptools
echo 'Upgrade setuptools Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade mycli command...'
pip install --upgrade mycli
echo 'mycli Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade pgcli command...'
pip install --upgrade pgcli
pip install --upgrade psycopg2-binary
echo 'pgcli Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade google-images-download command...'
pip install --upgrade google-images-download
echo 'google-images-download Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade youtube-dl...'
pip install --upgrade youtube-dl
echo 'youtube-dl Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade HTTPie'
pip install --upgrade httpie
echo 'HTTPie Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade Instaloader'
pip install --upgrade instaloader
echo 'Instaloader Done!'
echo '========================================'

echo '========================================'
echo 'Install awscli'
pip install --upgrade awscli
echo 'awscli Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade awsebcli'
pip install --upgrade awsebcli
echo 'awsebcli Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade Glances (Alt top comand)'
pip install --upgrade glances
pip install --upgrade pysnmp
pip install --upgrade bottle
echo 'glances Done!'
echo '========================================'

# https://github.com/alexdredmon/cuteuid
echo '========================================'
echo 'Install and Upgrade awsebcli'
pip install --upgrade cuteuid
echo 'cuteuid Done!'
echo '========================================'

# https://github.com/taspinar/twitterscraper
echo '========================================'
echo 'Install and Upgrade twitterscraper'
pip install --upgrade twitterscraper
echo 'twitterscraper Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade storm'
pip install --upgrade stormssh
echo 'stormssh Done!'
echo '========================================'

echo '========================================'
echo 'Install and Upgrade streamlink (Record nicolive)'
pip install --upgrade streamlink
echo 'A streamlink installation has been done!'
echo '========================================'

exit 0


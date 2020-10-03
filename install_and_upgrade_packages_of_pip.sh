#!/bin/bash

echo 'Upgrade pip'
pip install --upgrade --use-feature=2020-resolver pip
echo '========================================'
echo 'Upgrade pip Done!'
echo '========================================'

echo 'Upgrade numpy'
pip install --upgrade --use-feature=2020-resolver numpy
echo '========================================'
echo 'Upgrade numpy Done!'
echo '========================================'

echo '========================================'
echo 'Upgrade Graphtage'
echo 'Graphtage: A diff utility for tree-like files such as JSON, XML, HTML, YAML, and CSV.'
echo '========================================'
pip install --upgrade --use-feature=2020-resolver graphtage
echo '========================================'
echo 'Graphtage: Done!'
echo '========================================'

echo 'Upgrade termdown'
pip install --upgrade --use-feature=2020-resolver termdown
echo '========================================'
echo 'termdown Done!'
echo '========================================'

echo 'Upgrade setuptools'
pip install --upgrade --use-feature=2020-resolver setuptools
echo '========================================'
echo 'Upgrade setuptools Done!'
echo '========================================'

echo 'Install and Upgrade mycli command...'
pip install --upgrade --use-feature=2020-resolver mycli
echo '========================================'
echo 'mycli Done!'
echo '========================================'

echo 'Install and Upgrade pgcli command...'
pip install --upgrade --use-feature=2020-resolver pgcli
pip install --upgrade --use-feature=2020-resolver psycopg2-binary
echo '========================================'
echo 'pgcli Done!'
echo '========================================'

echo 'Install and Upgrade google-images-download command...'
pip install --upgrade --use-feature=2020-resolver google-images-download
echo '========================================'
echo 'google-images-download Done!'
echo '========================================'

echo 'Install and Upgrade youtube-dl...'
pip install --upgrade --use-feature=2020-resolver youtube-dl
echo '========================================'
echo 'youtube-dl Done!'
echo '========================================'

echo 'Install and Upgrade HTTPie'
pip install --upgrade --use-feature=2020-resolver httpie
echo '========================================'
echo 'HTTPie Done!'
echo '========================================'

echo 'Install and Upgrade Instaloader'
pip install --upgrade --use-feature=2020-resolver instaloader
echo '========================================'
echo 'Instaloader Done!'
echo '========================================'

echo 'Install awscli'
pip install --upgrade --use-feature=2020-resolver awscli
echo '========================================'
echo 'awscli Done!'
echo '========================================'

echo 'Install and Upgrade awsebcli'
pip install --upgrade --use-feature=2020-resolver awsebcli
echo '========================================'
echo 'awsebcli Done!'
echo '========================================'

echo 'Install and Upgrade Glances (Alt top comand)'
pip install --upgrade --use-feature=2020-resolver glances
pip install --upgrade --use-feature=2020-resolver pysnmp
pip install --upgrade --use-feature=2020-resolver bottle
echo '========================================'
echo 'glances Done!'
echo '========================================'

# https://github.com/alexdredmon/cuteuid
echo 'Install and Upgrade awsebcli'
pip install --upgrade --use-feature=2020-resolver cuteuid
echo '========================================'
echo 'cuteuid Done!'
echo '========================================'

# https://github.com/taspinar/twitterscraper
echo 'Install and Upgrade twitterscraper'
pip install --upgrade --use-feature=2020-resolver twitterscraper
echo '========================================'
echo 'twitterscraper Done!'
echo '========================================'

echo 'Install and Upgrade storm'
pip install --upgrade --use-feature=2020-resolver stormssh
echo '========================================'
echo 'stormssh Done!'
echo '========================================'

exit 0


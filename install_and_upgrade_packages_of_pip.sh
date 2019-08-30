#!/bin/bash

echo 'Upgrade pip'
pip install --upgrade pip
echo 'upgrade pip Done!'

echo 'Upgrade setuptools'
pip install --upgrade setuptools
echo 'upgrade setuptools Done!'

echo 'Install and Upgrade mycli command...'
pip install --upgrade mycli
echo 'mycli Done!'

echo 'Install and Upgrade pgcli command...'
pip install --upgrade pgcli
pip install --upgrade psycopg2-binary
echo 'pgcli Done!'

echo 'Install and Upgrade google-images-download command...'
pip install --upgrade google-images-download
echo 'google-images-download Done!'

echo 'Install and Upgrade youtube-dl...'
pip install --upgrade youtube-dl
echo 'youtube-dl Done!'

echo 'Install and Upgrade HTTPie'
pip install --upgrade httpie
echo 'HTTPie Done!'

echo 'Install and Upgrade Instaloader'
pip install --upgrade instaloader
echo 'Instaloader Done!'

echo 'Install awscli'
pip install --upgrade awscli
echo 'awscli Done!'

echo 'Install and Upgrade awsebcli'
pip install --upgrade awsebcli
echo 'awsebcli Done!'

exit 0

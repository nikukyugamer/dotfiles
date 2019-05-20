#!/bin/bash

echo 'Upgrade pip'
pip install --upgrade pip
echo 'Done!'

echo 'Install and Upgrade mycli command...'
pip install --upgrade mycli
echo 'Done!'

echo 'Install and Upgrade pgcli command...'
pip install --upgrade pgcli
pip install --upgrade psycopg2-binary
echo 'Done!'

echo 'Install and Upgrade google-images-download command...'
pip install --upgrade google-images-download
echo 'Done!'

echo 'Install and Upgrade youtube-dl...'
pip install --upgrade youtube-dl
echo 'Done!'

exit 0

#!/bin/bash -xe

echo 'Upgrade pip command...'
pip install --upgrade pip
echo 'Done!'

echo 'Upgrade mycli command...'
pip install --upgrade mycli
echo 'Done!'

echo 'Upgrade pgcli command...'
pip install --upgrade pgcli
echo 'Done!'

echo 'Upgrade google-images-download command...'
pip install --upgrade google-images-download
echo 'Done!'

exit 0

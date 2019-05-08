#!/bin/bash

echo 'Upgrade pip'
pip install --upgrade pip
echo 'Done!'

echo 'Install mycli command...'
pip install mycli
echo 'Done!'

echo 'Install pgcli command...'
pip install pgcli
pip install psycopg2-binary
echo 'Done!'

echo 'Install google-images-download command...'
pip install google-images-download
echo 'Done!'

exit 0

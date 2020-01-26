#!/bin/bash -e

heroku update
heroku plugins:install heroku-accounts

UNAME=`uname -a`
if [ "`echo $UNAME | grep Darwin`" ]; then
  echo 'Update circleci...'
  circleci update
elif [ "`echo $UNAME | grep arm`" ]; then
  # 現状、arm では動作しない
  # circleci update
  echo 'Skip "circleci update"'
elif [ "`echo $UNAME | grep Ubuntu`" ]; then
  echo 'Update circleci...'
  circleci update
elif [ "`echo $UNAME | grep el7`" ]; then
  echo 'Update circleci...'
  circleci update
else
  # echo 'What OS are you using?'
  echo 'Skip "circleci update"'
fi

exit 0


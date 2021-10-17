#!/bin/sh -e

UNAME=`uname -a`
if [ "`echo $UNAME | grep Darwin`" ]; then
  echo 'Hello, macOS!'
elif [ "`echo $UNAME | grep arm`" ]; then
  echo 'Hello, Raspberry Pi!'
elif [ "`echo $UNAME | grep Ubuntu`" ]; then
   echo 'Hello, Ubuntu'
elif [ "`echo $UNAME | grep el7`" ]; then
  echo 'Hello, CentOS!'
else
  echo 'What OS are you using?'
fi

exit 0

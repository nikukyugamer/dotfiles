#!/bin/sh -e

UNAME=`uname -a`
if [ "`echo $UNAME | grep Darwin`" ]; then
  brew upgrade
fi

exit 0

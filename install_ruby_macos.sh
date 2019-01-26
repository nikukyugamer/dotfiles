#!/bin/bash -xe

CONFIGURE_OPTS="--with-readline-dir=/usr/local/opt --with-openssl-dir=/usr/local/opt" rbenv install 2.5.3
CONFIGURE_OPTS="--with-readline-dir=/usr/local/opt --with-openssl-dir=/usr/local/opt" rbenv install 2.6.0

exit 0

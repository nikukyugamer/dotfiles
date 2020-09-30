#!/bin/sh

echo '----------------------------------------------------------------'
echo 'A list of $ nodenv intall -l | grep -E "^( *)(14.1|15.)(.*)$'
echo '----------------------------------------------------------------'
nodenv install -l | grep -E "^( *)(14\.1|15\.)(.*)$"

echo '----------------------------------------------------------------'
echo 'A list of $ nodenv versions | grep -E "^^( |\*)*(14\.|15\.)(.*)"'
echo '----------------------------------------------------------------'
nodenv versions | grep -E "^( |\*)*(14\.|15\.)(.*)$"

echo '----------------------------------------------------------------'
echo 'A list of $ goenv install -l | tail -n 5'
echo '----------------------------------------------------------------'
goenv install -l | tail -n 5

echo '----------------------------------------------------------------'
echo 'A list of $ goenv versions | tail -n 5'
echo '----------------------------------------------------------------'
goenv versions | tail -n 5

echo '----------------------------------------------------------------'
echo 'A list of $ rbenv install -l | grep -E "^( *)(2\.|3\.)(/*)'
echo '----------------------------------------------------------------'
rbenv install -l | grep -E "^( *)(2\.|3\.)(/*)"

echo '----------------------------------------------------------------'
echo 'A list of $ rbenv versions | grep -E "^( |\*)*(2\.|3\.)(.*)"'
echo '----------------------------------------------------------------'
rbenv versions | grep -E "^( |\*)*(2\.|3\.)(.*)"

echo '----------------------------------------------------------------'
echo 'A list of $ pyenv install -l | grep -E "^(. )(3\.8|3\.9)(.*)$'
echo '----------------------------------------------------------------'
pyenv install -l | grep -E "^(. )(3\.8|3\.9)(.*)$"

echo '----------------------------------------------------------------'
echo 'A list of $ pyenv versions | grep -E "^( |\*)*(3\.8|3\.9)(.*)"'
echo '----------------------------------------------------------------'
pyenv versions | grep -E "^( |\*)*(3\.8|3\.9)(.*)"

exit 0

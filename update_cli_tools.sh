#!/bin/bash -xe

heroku update

# Ubuntu では sudo が必要かも
echo "If you failed install circleci CLI, you must 'sudo circleci update'"
circleci update

exit 0

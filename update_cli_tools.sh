#!/bin/bash -xe

heroku update

# Ubuntu では sudo が必要かも
circleci update

exit 0

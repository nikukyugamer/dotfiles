#!/bin/bash

# IT IS NOT COREECT
mysql -u root -p < CREATE USER 'foobar'@'%' IDENTIFIED BY 'password';
mysql -u root -p < GRANT ALL ON *.* TO foobar;
mysql -u root -p < GRANT SELECT ON *.* TO foobar;


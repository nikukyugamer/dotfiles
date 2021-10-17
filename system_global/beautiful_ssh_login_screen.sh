#!/bin/bash

sudo wget --no-check-certificate -O /usr/local/bin/screenfetch https://raw.githubusercontent.com/KittyKatt/screenFetch/master/screenfetch-dev
sudo chmod 755 /usr/local/bin/screenfetch
sudo wget --no-check-certificate -P /usr/local/bin/ 'https://gist.github.com/ysaotome/5997652/raw/fecdf757b348debfcdd866df00f6d567ff749623/update_motd_by_screenfetch.sh'
sudo chmod 755 /usr/local/bin/update_motd_by_screenfetch.sh
sudo /usr/local/bin/update_motd_by_screenfetch.sh

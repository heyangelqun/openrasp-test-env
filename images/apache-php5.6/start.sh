#!/bin/bash

cp -R /test-application/php/html /var/www/

cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini

/bin/bash /rasp-installers/install-rasp-php5.6.sh

nohup python /root/pyhttp/http.py &>/dev/null &

/etc/init.d/apache2 start

/bin/bash

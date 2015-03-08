#!/bin/sh
kill -15 $(cat /var/run/httpd/httpd.pid /var/run/php-fpm/php-fpm.pid)
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
httpd
php-fpm

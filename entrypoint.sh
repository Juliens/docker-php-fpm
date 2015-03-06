#!/bin/sh
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
httpd
php-fpm
tail -f /var/log/httpd/localhost_*
